import 'package:flutter/material.dart';

class DrawerButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const DrawerButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      child: Text(text, style: const TextStyle(color: Colors.white)),

    );
  }
}
