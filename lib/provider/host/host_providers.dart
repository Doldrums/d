import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/connection_details.dart';
import 'host.dart';
import 'host_controller.dart';

final hostControllerProvider = ChangeNotifierProvider<HostController>((ref) {
  final host = HostController();
  host.init();
  return host;
});

final hostProvider = StateProvider<Host?>((ref) {
  final host = ref.watch(hostControllerProvider).host;
  return host;
});

final qrDataProvider = StateProvider<String?>((ref) {
  final host = ref.watch(hostControllerProvider).host;
  if (host == null || host.ip == null) return null;
  final model = ConnectionDetails(
    wifiName: host.ssid ?? '',
    ip: host.ip ?? '',
    wifiPassword: host.password ?? '',
  );
  return json.encode(model.toJson());
});

final hostStateProvider = StateProvider<bool?>((ref) {
  final host = ref.watch(hostControllerProvider).host;
  return host?.running;
});
