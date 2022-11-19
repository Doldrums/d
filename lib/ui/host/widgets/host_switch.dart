import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../provider/host/host_providers.dart';

class HostSwitch extends HookConsumerWidget {
  final void Function()? onPressed;

  const HostSwitch(this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEnabled = useState(false);
    return SizedBox(
      width: 300.0,
      height: 300.0,
      child: Neumorphic(
        margin: const EdgeInsets.all(14),
        style: const NeumorphicStyle(
          boxShape: NeumorphicBoxShape.circle(),
        ),
        child: Neumorphic(
          style: const NeumorphicStyle(
            depth: 14,
            boxShape: NeumorphicBoxShape.circle(),
          ),
          margin: const EdgeInsets.all(20),
          child: Neumorphic(
            style: const NeumorphicStyle(
              depth: -8,
              boxShape: NeumorphicBoxShape.circle(),
            ),
            margin: const EdgeInsets.all(10),
            child: Center(
              child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: NeumorphicSwitch(
                    value: isEnabled.value,
                    onChanged: (value) {
                      isEnabled.value = !isEnabled.value;
                      onPressed?.call();
                      ref.read(hostStateProvider.notifier).state =
                          isEnabled.value;
                    },
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
