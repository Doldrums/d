import 'package:emojis/emoji.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/neumorphic_card_base.dart';

class SendCard extends ConsumerWidget {
  const SendCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NeumorphicCardBase(
      content: SizedBox(
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
              child: Center(child: Text('Write', style: Theme.of(context).textTheme.bodyLarge!,)),
            ),
          ],
        ),
      ),
    );
  }
}
