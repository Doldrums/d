import 'package:d/ui/home/home.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import 'ui/client/client_page.dart';
import 'ui/host/host_page.dart';

void main() {
  runApp(const MyApp());
}

var logger = Logger(
  printer: PrettyPrinter(),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter Demo',
        routes: {
          '/': (context) => const HomePage(),
          '/client': (context) => const ClientPage(),
          '/host': (context) => const HostPage(),
        },
        initialRoute: '/',
      ),
    );
  }
}
