import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/client/client_controller.dart';
import 'widgets/app_bar.dart';

class ClientPage extends HookConsumerWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ClientController();
    return NeumorphicBackground(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 48.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            const ClientAppBar(),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
