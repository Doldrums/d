import 'package:flutter/material.dart';

import 'neumorphic_card_base.dart';

class ConnectionDetailsCard extends StatelessWidget {
  const ConnectionDetailsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const NeumorphicCardBase(
      content: SizedBox(
        height: 200,
        child: Text('Some information about the connection details'),
      ),
    );
  }
}
