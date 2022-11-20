import 'package:d/provider/client/client.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:ping_discover_network/ping_discover_network.dart';

class ClientController extends ChangeNotifier {
  Client? client;
  List<String> logs = [];
  int port = 400;
  Stream<NetworkAddress>? stream;
  NetworkAddress? address;

  void init() {
    getIpAddress();
  }

  getIpAddress() async {
    try {
      // stream = NetworkAnalyzer.discover2('192.168.0', port);
      // stream?.listen((NetworkAddress networkAddress) {
      //   if (networkAddress.exists) {
      //     address = networkAddress;
      //     client = Client(
      //         hostname: networkAddress.ip,
      //         port: port,
      //         onData: onData,
      //         onError: onError);
      //   }
      // });
      client = Client(
          hostname: null,
          port: port,
          onData: onData,
          onError: onError);
      notifyListeners();
    } catch (e) {
      print('Some error occurred... $e');
    }
  }

  Future<void> updateClientState() async {
    if (!client!.isConnected) {
      await client!.connect();
    } else {
       client!.disconnect();
    }
    notifyListeners();
  }

  sendMessage(String text) {
    client!.write(text);
    notifyListeners();
  }

  onData(Uint8List data) {
    final message = String.fromCharCodes(data);
    logs.add(message);
  }

  onError(dynamic error) {
    debugPrint('Error $error');
  }
}
