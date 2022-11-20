import 'package:d/provider/client/client.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:ping_discover_network/ping_discover_network.dart';

import '../models/connection_details.dart';
import '../models/message.dart';

class ClientController extends ChangeNotifier {
  Client client = Client();
  List<Message> logs = [];

  Future<void> updateClientState(ConnectionDetails? details) async {
    if (details != null) {
      await client.connect(details);
      getHistory();
    } else {
      getHistory();
      client.disconnect();
    }
    notifyListeners();
  }

  sendMessage(String text) {
    client.write(text);
    getHistory();
    notifyListeners();
  }

  getHistory() async {
    logs = await client.read();
    notifyListeners();
  }

}
