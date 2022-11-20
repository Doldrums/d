import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class BehaviorButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;

  const BehaviorButton({Key? key, required this.title, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: const NeumorphicStyle(
        depth: 80,
        intensity: 0.6,
      ),
      child: NeumorphicButton(
        padding: const EdgeInsets.all(8.0),
        onPressed: onPressed,
        style: const NeumorphicStyle(
          depth: -10,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Color(0xFF303E57),
            ),
          ),
        ),
      ),
    );
  }
}
