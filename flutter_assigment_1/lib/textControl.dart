import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback onPressed;
  const TextControl(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text('Click me to change the text'),
    );
  }
}
