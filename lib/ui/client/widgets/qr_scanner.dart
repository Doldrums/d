import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../../../provider/client/client_providers.dart';
import '../../../provider/models/connection_details.dart';

class QRScanner extends HookConsumerWidget {
  const QRScanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mobile Scanner')),
      body: MobileScanner(
        allowDuplicates: false,
        onDetect: (barcode, args) async {
          if (barcode.rawValue == null) {
            debugPrint('Failed to scan Barcode');
          } else {
            final String rawValue = barcode.rawValue!;

            ref.read(connectionDetailsProvider.notifier).state = ConnectionDetails.fromJson(json.decode(rawValue));

            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
