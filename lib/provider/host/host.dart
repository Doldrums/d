import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wifi_iot/wifi_iot.dart';

typedef Uint8ListCallBack = Function(Uint8List data);
typedef DynamicCallBack = Function(dynamic data);

DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

class Host {
  Uint8ListCallBack? onData;
  DynamicCallBack? onError;

  Host(this.onData, this.onError);

  HttpServer? host;
  bool running = false;
  List<Socket> sockets = [];
  String? qrData;
  InternetAddress address = InternetAddress.loopbackIPv4;
  int port = 8080;
  String? ssid;
  String? password;

  Future<void> start() async {
    if (await Permission.locationWhenInUse.request().isGranted &&
        await Permission.locationAlways.request().isGranted) {
      await WiFiForIoTPlugin.setWiFiAPEnabled(true);
      ssid = await WiFiForIoTPlugin.getWiFiAPSSID();
      password = await WiFiForIoTPlugin.getWiFiAPPreSharedKey();
      qrData = 'WIFI:S:$ssid;T:WPA;P:$password;;';
      runZoned(() async {
        host = await HttpServer.bind(address, port!);
        running = true;
        host!.listen(onRequest);
        const message = "Server is listening on port 8080.";
        onData!(Uint8List.fromList(message.codeUnits));
      }, onError: onError);
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
  }

  void onRequest(HttpRequest request) {
    print(request);
  }

  void broadcast(String data) {
    onData!(Uint8List.fromList('Broadcast message $data'.codeUnits));
  }
}
