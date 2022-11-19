import 'dart:io';
import 'dart:typed_data';

import 'package:device_info_plus/device_info_plus.dart';

typedef Uint8ListCallBack = Function(Uint8List data);
typedef DynamicCallBack = Function(dynamic data);

DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

class ClientModel {
  String hostname;
  int port;
  Uint8ListCallBack onData;
  DynamicCallBack onError;

  ClientModel({
    required this.hostname,
    required this.port,
    required this.onData,
    required this.onError,
  });
  bool isConnected = false;
  Socket? socket;

  Future<void> connect() async {
    try {
      socket = await Socket.connect(hostname, port);
      socket?.listen(onData, onError: onError, onDone: () async {
        final info = await deviceInfo.deviceInfo;
        disconnect(info);
        isConnected = false;
      });
      isConnected = true;
    } catch (e) {
      print('Some error occurred... $e');
    }
  }

  void write(String message) => socket?.write(message);

  void disconnect(BaseDeviceInfo deviceInfo) => socket?.destroy();
}
