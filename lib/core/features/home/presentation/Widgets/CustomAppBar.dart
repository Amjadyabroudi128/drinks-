import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50, left: 30),
      child: Column(
        children: [
          Text("hello world")
        ],
      ),
    );
  }
}
