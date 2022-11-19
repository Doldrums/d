import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'neumorphic_card_base.dart';

class LogsCard extends HookConsumerWidget {
  final List<String> history;

  const LogsCard(this.history, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NeumorphicCardBase(
      content: SizedBox(
        height: 320,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Text(
              'ServerLogs',
              style: Theme.of(context).textTheme.titleLarge!,
            ),
            const Divider(),
            ...history
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
