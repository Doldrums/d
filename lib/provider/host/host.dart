import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_device_details/device_details.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wifi_iot/wifi_iot.dart';

import '../models/ack.dart';
import '../models/api_response.dart';
import '../models/history_response.dart';
import '../models/message.dart';

typedef Uint8ListCallBack = Function(Uint8List data);
typedef DynamicCallBack = Function(dynamic data);

class Host {
  Uint8ListCallBack? onData;
  DynamicCallBack? onError;

  Host(this.onData, this.onError);

  HttpServer? host;
  bool running = false;
  String? qrData;
  InternetAddress address = InternetAddress.anyIPv4;
  int port = 8080;
  String? ssid;
  String? password;
  String? ip;
  List<Message> history = [];

  Future<void> start() async {
    if (await Permission.locationWhenInUse.request().isGranted &&
        await Permission.locationAlways.request().isGranted) {
      await WiFiForIoTPlugin.setWiFiAPEnabled(true);
      ssid = await WiFiForIoTPlugin.getWiFiAPSSID();
      password = await WiFiForIoTPlugin.getWiFiAPPreSharedKey();
      ip = await DeviceDetails.ipAddress;
      qrData = 'WIFI:S:$ssid;T:WPA;P:$password;;';
      runZoned(() async {
        host = await HttpServer.bind(address, port);
        running = true;
        host!.listen(onRequest);
        const message = "Server is listening on port 8080.";
        onData!(Uint8List.fromList(message.codeUnits));
      },
          //ignore: deprecated_member_use
          onError: onError);
    }
  }

  Future<void> stop() async {
    var message = "Shutting down...";
    onData!(Uint8List.fromList(message.codeUnits));
    message = "Server is disabled.";
    onData!(Uint8List.fromList(message.codeUnits));
    await WiFiForIoTPlugin.setWiFiAPEnabled(false);
    await host!.close();
    host = null;
    running = false;
    qrData = null;
    password = null;
    ssid = null;
    ip = null;
  }

  void onRequest(HttpRequest request) async {
    if (request.uri.path == "/connect" && request.method == 'POST') {
      Ack connectRequest =
          Ack.fromJson(json.decode(await utf8.decoder.bind(request).join()));

      request.response.headers.set("Content-Type", "application/json");
      request.response.write(json.encode(ApiResponse(status: 'ok').toJson()));
      request.response.close();

      final message =
          "${connectRequest.name} connected from ${connectRequest.device}";
      onData!(Uint8List.fromList(message.codeUnits));
    } else if (request.uri.path == "/disconnect" && request.method == 'POST') {
      Ack connectRequest =
          Ack.fromJson(json.decode(await utf8.decoder.bind(request).join()));

      request.response.headers.set("Content-Type", "application/json");
      request.response.write(json.encode(ApiResponse(status: 'ok').toJson()));
      request.response.close();

      final message = "${connectRequest.name} disconnected";
      onData!(Uint8List.fromList(message.codeUnits));
    } else if (request.uri.path == "/write" && request.method == 'POST') {
      Message writeRequest = Message.fromJson(
          json.decode(await utf8.decoder.bind(request).join()));

      request.response.headers.set("Content-Type", "application/json");
      request.response.write(json.encode(ApiResponse(status: 'ok').toJson()));
      request.response.close();

      history.add(writeRequest);

      final message =
          "${writeRequest.name} posted ${writeRequest.message} from ${writeRequest.device}";
      onData!(Uint8List.fromList(message.codeUnits));
    } else if (request.uri.path == "/read" && request.method == 'GET') {
      request.response.headers.set("Content-Type", "application/json");
      request.response
          .write(json.encode(HistoryResponse(result: history).toJson()));
      request.response.close();
    }
  }
}
