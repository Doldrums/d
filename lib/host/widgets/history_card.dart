import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'neumorphic_card_base.dart';

class HistoryCard extends HookConsumerWidget {
  final List<String> history;
  const HistoryCard(this.history, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NeumorphicCardBase(
      content: SizedBox(
        height: 300,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            const Text('ServerLogs'),
            ...history.map((e) => Text('> $e')).toList(),
          ],
        ),
      ),
    );
  }
}
