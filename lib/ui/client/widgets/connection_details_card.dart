import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../common/neumorphic_card_base.dart';

class ClientConnectionDetailsCard extends ConsumerWidget {
  const ClientConnectionDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NeumorphicCardBase(
      content: SizedBox(
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Connection details',
              style: Theme.of(context).textTheme.titleLarge!,
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0, top: 12.0),
              child: Row(
                children: [
                  Text(
                    'Unix domain address',
                    style: Theme.of(context).textTheme.bodyLarge!,
                  ),
                  const Spacer(),
                  Text(
                    'none',
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.bodyMedium!,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Row(
                children: [
                  Text(
                    'Ephemeral port',
                    style: Theme.of(context).textTheme.bodyLarge!,
                  ),
                  const Spacer(),
                  Text(
                    'none',
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.bodyMedium!,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Row(
                children: [
                  Text(
                    'WiFi AP SSID',
                    style: Theme.of(context).textTheme.bodyLarge!,
                  ),
                  const Spacer(),
                  Text(
                    'none',
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.bodyMedium!,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Row(
                children: [
                  Text(
                    "WiFi AP's password",
                    style: Theme.of(context).textTheme.bodyLarge!,
                  ),
                  const Spacer(),
                  Text(
                    'none',
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.bodyMedium!,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Row(
                children: [
                  Text(
                    "Current Host State",
                    style: Theme.of(context).textTheme.bodyLarge!,
                  ),
                  const Spacer(),
                  Text(
                    'Sleeping..',
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.bodyMedium!,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
