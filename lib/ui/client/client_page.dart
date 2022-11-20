import 'package:adaptive_dialog/adaptive_dialog.dart';
import 'package:d/ui/client/widgets/connection_details_card.dart';
import 'package:d/ui/client/widgets/content_card.dart';
import 'package:d/ui/client/widgets/scan_card.dart';
import 'package:d/ui/client/widgets/send_card.dart';
import 'package:d/ui/client/widgets/vr_card.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/client/client_providers.dart';
import '../../provider/models/message.dart';
import 'widgets/client_bar.dart';

class ClientPage extends HookConsumerWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<Message> serverLogs = ref.watch(clientControllerProvider).logs;

    return NeumorphicBackground(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: ListView(
          children: [
            const ClientAppBar(),
            const SizedBox(height: 20),
            ClientConnectionDetailsCard(),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: VRCard(() {}),
                ),
                Expanded(
                  flex: 1,
                  child: ScanCard(
                    () async {
                      await Navigator.pushNamed(
                        context,
                        '/qrscanner',
                      );

                      // print('exited ${ref.read(connectionDetailsProvider)}');

                      await ref
                          .read(clientControllerProvider.notifier)
                          .updateClientState(ref.read(connectionDetailsProvider));
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: SendCard(() async {
                    final data = await showTextInputDialog(
                      context: context,
                      textFields: [
                        DialogTextField(
                          hintText: 'Write..',
                          validator: (value) =>
                          value!.isEmpty ? 'Input more than one character' : null,
                        ),
                      ],
                    );
                    await ref
                        .read(clientControllerProvider.notifier).sendMessage(data!.first);
                  }),
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
