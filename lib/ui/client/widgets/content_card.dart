import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../provider/models/write_request.dart';

class ContentCard extends HookConsumerWidget {
  final List<WriteRequest> content;

  const ContentCard(this.content, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 300,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Column(
          children: [
            Text(
              'Host Server history',
              style: Theme.of(context).textTheme.headline5!,
            ),
            const Divider(),
            ...content
                .map((WriteRequest e) => Text(
                      '> Text Message from:${e.name}, ${e.device} -> ${e.message}',
                      style: Theme.of(context).textTheme.bodyMedium!,
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}
