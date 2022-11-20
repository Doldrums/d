import 'package:d/ui/client/widgets/connection_details_card.dart';
import 'package:d/ui/client/widgets/content_card.dart';
import 'package:d/ui/client/widgets/input_card.dart';
import 'package:d/ui/client/widgets/scan_card.dart';
import 'package:d/ui/client/widgets/vr_card.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widgets/app_bar.dart';

class ClientPage extends HookConsumerWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NeumorphicBackground(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0),
        child: Column(
          children: [
            const SizedBox(height: 60),
            const ClientAppBar(),
            const SizedBox(height: 60),
            Row(
              children: [
                const Expanded(flex: 3, child: ClientConnectionDetailsCard()),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: const [
                      VRCard(),
                      ScanCard(),
                    ],
                  ),
                ),
              ],
            ),

            const ContentCard([]),
            const SafeArea(child: InputCard(),),
          ],
        ),
      ),
    );
  }
}
