import 'package:emojis/emoji.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SendCard extends ConsumerWidget {
  final void Function()? onPressed;
  const SendCard(this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NeumorphicButton(
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
              child: Text('${Emoji.byName('pen')}',
                  style: const TextStyle(fontSize: 24)),
            ),
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Center(
                  child: Text(
                'Write',
                style: Theme.of(context).textTheme.bodyLarge!,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
