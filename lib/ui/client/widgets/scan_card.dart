import 'package:emojis/emoji.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/neumorphic_card_base.dart';

class ScanCard extends ConsumerWidget {
  final void Function()? onPressed;
  const ScanCard(this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: NeumorphicButton(
        onPressed: onPressed,
        style: NeumorphicStyle(
          depth: 20,
          surfaceIntensity: 1,
          boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(20),
          ),
        ),
        child: SizedBox(
          height: 50,
          child: Column(
            children: [
              Center(
                child: Text('${Emoji.byName('camera')}',
                    style: const TextStyle(fontSize: 24)),
              ),
              const Spacer(),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: Text(
                  'Connect',
                  style: Theme.of(context).textTheme.bodyLarge!,
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
