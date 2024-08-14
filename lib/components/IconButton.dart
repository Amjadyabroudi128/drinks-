import 'package:flutter/material.dart';

class MyIcons extends StatelessWidget {
  final Icon? icon;
  final VoidCallback? onPressed;
  final Color? clr;
  final double? size;
  const MyIcons({super.key, this.clr, this.onPressed, this.icon, this.size});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: size ,
      onPressed: onPressed,
      icon: icon ?? Icon(Icons.error), // Provide a default icon to handle null
      color: clr,
    );
  }
}

