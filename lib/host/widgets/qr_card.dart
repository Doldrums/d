import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../providers.dart';
import 'neumorphic_card_base.dart';

class QRWidget extends HookConsumerWidget {
  const QRWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final qrData = ref.watch(qrDataProvider);
    return NeumorphicCardBase(
      content: Column(
        children: [
          QrImage(data: qrData ?? '', size: 200),
          const Text('Scan to Connect'),
        ],
      ),
    );
  }
}
