import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'host.dart';

class HostController extends ChangeNotifier {
  Host? host;
  List<String> serverLogs = [];

  void init() {
    host = Host(onData, onError);
    notifyListeners();
  }

  Future<void> updateHostState() async {
    if(!host!.running) await host!.start();
    notifyListeners();
  }

  void onData(Uint8List data){
    final text = String.fromCharCodes(data);
    serverLogs.add(text);
    notifyListeners();
  }
  void onError(dynamic error){
    debugPrint('Some error occurred $error');
  }

}
