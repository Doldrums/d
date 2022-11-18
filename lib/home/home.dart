import 'package:d/home/widgets/behavior_btn.dart';
import 'package:emojis/emoji.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NeumorphicBackground(
      child: Padding(
        padding: const EdgeInsets.all(96.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
              child: SizedBox(
                width: 240.0,
                height: 240.0,
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
                      child: Stack(
                        fit: StackFit.expand,
                        alignment: Alignment.center,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text('${Emoji.byName('evergreen tree')}',
                                  style: const TextStyle(fontSize: 56)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    text: 'Operation'.toUpperCase(),
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: const Color(0xFF303E57),
                        ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '\nSecret Pine',
                        style: Theme.of(context).textTheme.caption?.copyWith(
                              color: const Color(0xFF303E57),
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BehaviorButton(
                  title: 'Establish host',
                  onPressed: () => Navigator.pushNamed(
                    context,
                    '/host',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                BehaviorButton(
                  title: 'Connect host',
                  onPressed: () => Navigator.pushNamed(
                    context,
                    '/client',
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
