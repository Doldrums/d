import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'client_controller.dart';
import 'widgets/app_bar.dart';

class ClientPage extends HookConsumerWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ClientController();
    return Material(
      child: NeumorphicBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 30),
            const ClientAppBar(),
            if (controller.client == null || !controller.client!.isConnected)
              Column(children: [
                InkWell(
                    onTap: () async {
                      final info = await DeviceInfoPlugin().deviceInfo;
                      await controller.client!.connect();
                      controller.sendMessage('connected to ${info.data}');
                    },
                    child: Row(children: [
                      if (controller.address == null)
                        const Text('No deviceInfo found')
                      else
                        Text('Server ${controller.address!.ip}')
                    ])),
                IconButton(
                  onPressed: controller.getIpAddress(),
                  icon: const Icon(Icons.search),
                ),
              ])
            else
              Text('Connected to ${controller.client!.hostname}'),
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
      ),
    );
  }
}
