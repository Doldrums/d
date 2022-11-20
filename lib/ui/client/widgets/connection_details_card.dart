import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../provider/client/client_providers.dart';
import '../../common/neumorphic_card_base.dart';

class ClientConnectionDetailsCard extends ConsumerWidget {
  const ClientConnectionDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final details = ref.watch(connectionDetailsProvider);
    final client = ref.watch(clientProvider);

    return NeumorphicCardBase(
      content: Column(
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
                  'IP address',
                  style: Theme.of(context).textTheme.bodyLarge!,
                ),
                const Spacer(),
                Text(
                  details?.ip ?? 'none',
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
                  client?.isConnected == true ? '8080' : 'none',
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
                  'WiFI Name',
                  style: Theme.of(context).textTheme.bodyLarge!,
                ),
                const Spacer(),
                Text(
                  details?.wifiName ?? 'none',
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
                  "WiFi password",
                  style: Theme.of(context).textTheme.bodyLarge!,
                ),
                const Spacer(),
                Text(
                  details?.wifiPassword ?? 'none',
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
                  "Connection status",
                  style: Theme.of(context).textTheme.bodyLarge!,
                ),
                const Spacer(),
                Text(
                  client?.isConnected == null
                      ? 'none'
                      : client!.isConnected
                          ? 'Connected..'
                          : 'Sleeping..',
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.bodyMedium!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
