import 'package:flutter/material.dart';

enum ButtonColor {
  primary,
  secondary,
}

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.label,
    required this.onPress,
    required this.color,
  });

  final String label;
  final Function() onPress;
  final ButtonColor color;

  @override
  Widget build(BuildContext context) {
    final backgroundColor = color == ButtonColor.primary ? Color(0xff25b136): Color(0xff2e2e2e);

    return Expanded(
      child: ElevatedButton(
        onPressed: onPress,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: Colors.white,
          )
        ),
      ),
    );
  }
}