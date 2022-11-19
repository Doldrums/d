import 'package:hooks_riverpod/hooks_riverpod.dart';

final hostStateProvider = StateProvider<bool>((ref) => false);
final qrDataProvider = StateProvider<String?>((ref) => 'WIFI:S:ssid;T:WPA;P:password;;');
