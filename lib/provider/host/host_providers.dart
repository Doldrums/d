import 'package:hooks_riverpod/hooks_riverpod.dart';

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
  return host?.qrData;
});

final hostStateProvider = StateProvider<bool?>((ref) {
  final host = ref.watch(hostControllerProvider).host;
  return host?.running;
});
