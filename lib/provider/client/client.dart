import 'dart:io';
import 'dart:typed_data';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:wifi_iot/wifi_iot.dart';

typedef Uint8ListCallBack = Function(Uint8List data);
typedef DynamicCallBack = Function(dynamic data);

DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

class Client {
  String? hostname;
  int port;
  Uint8ListCallBack onData;
  DynamicCallBack onError;

  Client({
    required this.hostname,
    required this.port,
    required this.onData,
    required this.onError,
  });
  bool isConnected = false;
  Socket? socket;

  Future<void> connect() async {
    if (await WiFiForIoTPlugin.isConnected()) {
      try {
        hostname = (await WiFiForIoTPlugin.getIP())!;
        socket = await Socket.connect(hostname, port);
        socket?.listen(onData, onError: onError, onDone: () async {
          final info = await deviceInfo.deviceInfo;
          disconnect();
          isConnected = false;
        });
        isConnected = true;
      } catch (e) {
        print('Some error occurred... $e');
      }
    }
  }

  void write(String message) => socket?.write(message);

  void disconnect() {
    const ack = 'disconnected';
    write(ack);
    if (socket != null) {
      socket?.destroy();
    }
  }
}
