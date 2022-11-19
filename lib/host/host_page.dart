import 'package:d/host/widgets/details_card.dart';
import 'package:d/host/widgets/logs_card.dart';
import 'package:d/host/widgets/host_bar.dart';
import 'package:d/host/widgets/host_switch.dart';
import 'package:d/host/widgets/qr_card.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../host_providers.dart';

class HostPage extends ConsumerWidget {
  const HostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> serverLogs = ref.watch(hostControllerProvider).serverLogs;
    return NeumorphicBackground(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            const HostAppBar(),
            const Spacer(),
            HostSwitch(
              () async => await ref
                  .read(hostControllerProvider.notifier)
                  .updateHostState(),
            ),
            const Spacer(),
            Row(
              children: const [
                Expanded(flex: 2, child: QRCard()),
                Expanded(flex: 3, child: ConnectionDetailsCard()),
              ],
            ),
            LogsCard(serverLogs),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
