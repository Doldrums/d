import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../provider/host/host_providers.dart';

class HostAppBar extends HookConsumerWidget {
  const HostAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hostEnabled = ref.watch(hostStateProvider);
    return Row(
      children: [
        Neumorphic(
          style: NeumorphicStyle(
            depth: 80,
            intensity: 0.4,
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(8),
            ),
          ),
          child: NeumorphicButton(
            padding: const EdgeInsets.all(12.0),
            onPressed: () {},
            style: NeumorphicStyle(
              depth: -10,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(8),
              ),
            ),
            child: hostEnabled == null || !hostEnabled
                ? Row(
                    children: const [
                      Icon(
                        Icons.signal_wifi_connected_no_internet_4,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Disabled',
                        ),
                      ),
                    ],
                  )
                : Row(
                    children: const [
                      Icon(
                        Icons.connect_without_contact_sharp,
                        color: Color(0xFFfc7b03),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Stable',
                        ),
                      ),
                    ],
                  ),
          ),
        ),
        const Spacer(),
        Neumorphic(
          style: NeumorphicStyle(
            depth: 80,
            intensity: 0.4,
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(8),
            ),
          ),
          child: NeumorphicButton(
            padding: const EdgeInsets.all(12.0),
            onPressed: () {},
            style: NeumorphicStyle(
              depth: -10,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(8),
              ),
            ),
            child: const Icon(
              Icons.settings,
              color: Color(0xFF303E57),
            ),
          ),
        ),
      ],
    );
  }
}
