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

  Future<void> start() async {
    if (await Permission.locationWhenInUse.request().isGranted &&
        await Permission.locationAlways.request().isGranted) {
      await WiFiForIoTPlugin.setWiFiAPEnabled(true);
      final ssid = await WiFiForIoTPlugin.getWiFiAPSSID();
      final password = await WiFiForIoTPlugin.getWiFiAPPreSharedKey();
      final qrData = 'WIFI:S:$ssid;T:WPA;P:$password;;';
      runZoned(() async {
        host = await HttpServer.bind(InternetAddress.loopbackIPv4, 8080);
        running = true;
        host!.listen(onRequest);
        const message = "Server is listening on port 8080";
        onData!(Uint8List.fromList(message.codeUnits));
      }, onError: onError);
    }
  }
  Future<void> stop() async {
    await WiFiForIoTPlugin.setWiFiAPEnabled(false);
    await host!.close();
    host = null;
    running = false;
  }

  void onRequest(HttpRequest request) {
    print(request);
  }

  void broadcast(String data){
    onData!(Uint8List.fromList('Broadcast message $data'.codeUnits));

  }
}
