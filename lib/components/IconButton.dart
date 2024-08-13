import 'package:flutter/material.dart';

class IconButtons extends StatelessWidget {
  final Icon? icon;
  final VoidCallback? press;
  final Color? clr;

  const IconButtons({super.key, this.clr, this.press, this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: press,
      icon: icon ?? Icon(Icons.error), // Provide a default icon to handle null
      color: clr,
    );
  }
}

