import 'package:d/client/client_model.dart';
import 'package:flutter/foundation.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:ping_discover_network/ping_discover_network.dart';

class ClientController extends ChangeNotifier {
  ClientModel? client;
  List<String> logs = [];
  int port = 400;
  Stream<NetworkAddress>? stream;
  NetworkAddress? address;

  void init() {
    getIpAddress();
  }

  getIpAddress() {
    stream = NetworkAnalyzer.discover2('192.168.0.0', port);
    stream?.listen((NetworkAddress networkAddress) {
      if (networkAddress.exists) {
        address = networkAddress;
        client = ClientModel(
            hostname: networkAddress.ip,
            port: port,
            onData: onData,
            onError: onError);
      }
    });
    notifyListeners();
  }

  onData(Uint8List data) {
    final message = String.fromCharCodes(data);
    logs.add(message);
    notifyListeners();
  }

  onError(dynamic error) {
    debugPrint('Error $error');
  }
}
