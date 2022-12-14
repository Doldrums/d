import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../provider/client/client_providers.dart';

class ClientAppBar extends HookConsumerWidget {
  const ClientAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(clientProvider);
    bool? isConnected = client?.isConnected ?? false;
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
            child: !isConnected
                ? Row(
                    children: const [
                      Icon(
                        Icons.not_interested,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16.0),
                        child: Text(
                          'Disconnected',
                        ),
                      ),
                    ],
                  )
                : Row(
                    children: const [
                      Icon(
                        Icons.connect_without_contact,
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
