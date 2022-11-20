import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../models/connection_details.dart';
import 'client.dart';
import 'client_controller.dart';

final clientControllerProvider =
    ChangeNotifierProvider<ClientController>((ref) {
  final client = ClientController();
  return client;
});

final clientProvider = StateProvider<Client?>((ref) {
  final client = ref.watch(clientControllerProvider).client;
  return client;
});

final connectionDetailsProvider = StateProvider<ConnectionDetails?>((ref) => null);


final hostDetailsProvider = StateProvider<Client?>((ref) {
  final client = ref.watch(clientControllerProvider).client;
  return client;
});