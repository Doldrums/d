import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../host_providers.dart';
import 'neumorphic_card_base.dart';

class ConnectionDetailsCard extends ConsumerWidget {
  const ConnectionDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final host = ref.watch(hostProvider);
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
                    host?.address?.address ?? 'none',
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
                    host?.port.toString() ?? 'none',
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
                    host?.ssid ?? 'none',
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
                    host?.password ?? 'none',
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
                    host?.running == null
                        ? 'none'
                        : host!.running
                            ? 'Running'
                            : 'Slepping',
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
