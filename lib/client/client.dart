import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'client_controller.dart';
import 'widgets/app_bar.dart';

class ClientPage extends HookConsumerWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ClientController();
    return NeumorphicBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const ClientAppBar(),
          AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                return Text(
                  '${controller.client}',
                  style: Theme.of(context).textTheme.headline4,
                );
              }),
          const Spacer(),
        ],
      ),
    );
  }
}
