import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'client.dart';
import 'client_controller.dart';

final clientControllerProvider = ChangeNotifierProvider<ClientController>((ref) {
  final client = ClientController();
  client.init();
  return client;
});

final clientProvider = StateProvider<Client?>((ref) {
  final client = ref.watch(clientControllerProvider).client;
  return client;
});