import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../common/neumorphic_card_base.dart';

class ClientConnectionDetailsCard extends ConsumerWidget {
  const ClientConnectionDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  'WiFI Name',
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
                  "WiFi password",
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
                  "Connection status",
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
    );
  }
}
