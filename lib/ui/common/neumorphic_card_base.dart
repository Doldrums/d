import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class NeumorphicCardBase extends StatelessWidget {
  final Widget content;

  const NeumorphicCardBase({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        depth: 20,
        surfaceIntensity: 1,
        boxShape: NeumorphicBoxShape.roundRect(
            const BorderRadius.all(Radius.circular(20))),
      ),
      margin: const EdgeInsets.all(6),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: content,
      ),
    );
  }
}
