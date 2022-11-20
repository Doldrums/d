import 'dart:io' show Platform;
import 'dart:typed_data';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:wifi_iot/wifi_iot.dart';

import '../models/connection_details.dart';
import '../models/history_response.dart';
import '../models/message.dart';

typedef Uint8ListCallBack = Function(Uint8List data);
typedef DynamicCallBack = Function(dynamic data);

class Client {
  var dio = Dio();

  Client();

  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  bool isConnected = false;
  ConnectionDetails? details;
  String? device;
  String? name;

  Future<void> connect(ConnectionDetails details) async {
    this.details = details;

    if (Platform.isAndroid) {
      this.device = (await deviceInfo.androidInfo).model;
    } else if (Platform.isIOS) {
      this.device = (await deviceInfo.iosInfo).model;
    } else {
      this.device = "Unknown";
    }

    this.name = "Arina";

    await WiFiForIoTPlugin.connect(details.wifiName,
        password: details.wifiPassword,
        security: NetworkSecurity.WPA,
        joinOnce: true,
        withInternet: false);
    if (await WiFiForIoTPlugin.isConnected()) {
      await WiFiForIoTPlugin.forceWifiUsage(true);

      try {
        await dio.post('http://${details.ip}:8080/connect',
            data: {'name': name, 'device': device});
        isConnected = true;
      } catch (e) {
        print('Some error occurred... $e');
      }
    }
  }

  Future<void> disconnect() async {
    if (await WiFiForIoTPlugin.isConnected()) {
      try {
        await dio.post('http://${details!.ip}:8080/disconnect',
            data: {'name': name, 'device': device});
        isConnected = false;
      } catch (e) {
        print('Some error occurred... $e');
      }
    }
    await WiFiForIoTPlugin.disconnect();
  }

  Future<void> write(String text) async {
    if (await WiFiForIoTPlugin.isConnected()) {
      try {
        await dio.post('http://${details!.ip}:8080/write',
            data: {'name': name, 'device': device, 'message': text});
        isConnected = false;
      } catch (e) {
        print('Some error occurred... $e');
      }
    }
  }

  Future<List<Message>> read() async {
    if (await WiFiForIoTPlugin.isConnected()) {
      try {
        final response = await dio.get('http://${details!.ip}:8080/read');
        return HistoryResponse.fromJson(response.data).result;
      } catch (e) {
        print('Some error occurred... $e');
      }
    }
    return [];
  }
}
