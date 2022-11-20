import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../common/neumorphic_card_base.dart';

class ContentCard extends HookConsumerWidget {
  final List<String> content;

  const ContentCard(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NeumorphicCardBase(
      content: SizedBox(
        height: 300,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Text(
              'Host Server history',
              style: Theme.of(context).textTheme.titleLarge!,
            ),
            const Divider(),
            ...content
                .map((e) => Text(
              '> $e',
              style: Theme.of(context).textTheme.bodyMedium!,
            ))
                .toList(),
          ],
        ),
      ),
    );
  }
}
