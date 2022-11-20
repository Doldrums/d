import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../provider/client/client_providers.dart';
import '../../../provider/models/message.dart';

class ContentCard extends HookConsumerWidget {
  final List<Message> content;

  const ContentCard(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ref.watch(clientProvider);
    return SizedBox(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Host Server history',
              style: Theme.of(context).textTheme.headline5!,
            ),
            const Divider(),
            ...content
                .map((Message e) => BubbleSpecialThree(
                    text: "${e.message}\n(c)${e.device}",
                    tail: false,
                    isSender: e.name == client?.name,
                  ))
                .toList(),
          ],
        ),
      ),
    );
  }
}
