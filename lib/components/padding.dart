import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {
  final EdgeInsetsGeometry edgeInsetsGeometry;
  final Widget? child;
  const Spacing({super.key, required this.edgeInsetsGeometry, this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: edgeInsetsGeometry,
      child: child,
    );
  }
}
