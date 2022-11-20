import 'package:emojis/emoji.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/neumorphic_card_base.dart';

class ScanCard extends ConsumerWidget {
  const ScanCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NeumorphicCardBase(
      content: SizedBox(
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
              child: Center(child: Text('Scan', style: Theme.of(context).textTheme.bodyLarge!,)),
            ),
          ],
        ),
      ),
    );
  }
}
