import 'package:d/ui/client/widgets/qr_scanner.dart';
import 'package:d/ui/home/home.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/logger.dart';

import 'ui/client/client_page.dart';
import 'ui/client/widgets/ar_viewer.dart';
import 'ui/host/host_page.dart';

void main() {
  runApp(const MyApp());
}

final logger = Logger(
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
          '/qrscanner': (context) => const QRScanner(),
          '/ar': (context) => ARViewer(),
        },
        initialRoute: '/',
      ),
    );
  }
}
