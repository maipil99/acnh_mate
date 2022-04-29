import 'package:flutter/material.dart';

class drawer_button extends StatelessWidget {
  final String text;
  final Function onPressed;

  const drawer_button({
    required this.text,
    required this.onPressed,

  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        onPressed();
      },
      child: Text(text,
          style: const TextStyle(color: Colors.white)
      ),
      style: TextButton.styleFrom(backgroundColor: Colors.blue),
    );
  }
}
