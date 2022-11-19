import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../host_providers.dart';
import 'neumorphic_card_base.dart';

class QRCard extends ConsumerWidget {
  const QRCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String? qrData = ref.watch(qrDataProvider);
    return NeumorphicCardBase(
      content: Column(
        children: [
          qrData != null
              ? QrImage(data: qrData, size: 200)
              : const SizedBox(
                  height: 200,
                  width: 200,
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
          Text(qrData != null
              ? 'Scan to Connect' : 'Setup host'),
        ],
      ),
    );
  }
}
