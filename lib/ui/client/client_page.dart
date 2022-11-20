import 'package:d/ui/client/widgets/connection_details_card.dart';
import 'package:d/ui/client/widgets/content_card.dart';
import 'package:d/ui/client/widgets/scan_card.dart';
import 'package:d/ui/client/widgets/send_card.dart';
import 'package:d/ui/client/widgets/vr_card.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/client/client_providers.dart';
import 'widgets/client_bar.dart';

class ClientPage extends HookConsumerWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<String> serverLogs = ref.watch(clientControllerProvider).logs;
    return NeumorphicBackground(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: ListView(
          children: [
            const ClientAppBar(),
            const SizedBox(height: 20),
            const Expanded(flex: 3, child: ClientConnectionDetailsCard()),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: VRCard((){}),
                ),
                Expanded(
                  flex: 1,
                  child: ScanCard(
                        () async => await ref
                        .read(clientControllerProvider.notifier).updateClientState(),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SendCard((){}),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ContentCard(serverLogs),
          ],
        ),
      ),
    );
  }
}
