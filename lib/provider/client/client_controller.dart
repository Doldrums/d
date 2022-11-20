import 'package:d/provider/client/client.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:ping_discover_network/ping_discover_network.dart';

import '../models/connection_details.dart';

class ClientController extends ChangeNotifier {
  Client client = Client();
  List<String> logs = [];

  Future<void> updateClientState(ConnectionDetails? details) async {
    if (details != null) {
      await client.connect(details);
    } else {
      client.disconnect();
    }
    notifyListeners();
  }

  sendMessage(String text) {
    //client!.write(text);
    notifyListeners();
  }
}
