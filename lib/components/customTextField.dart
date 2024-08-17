import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  final String? hinttext;
  final TextEditingController? myController;
  final Widget? prefixIcon;
  final Widget? child;
  const customTextField({super.key, this.hinttext, this.myController, this.prefixIcon, this.child});

  @override
  Widget build(BuildContext context) {
    return  TextField(
      controller: myController,
      decoration:   InputDecoration(
        prefixIcon: Container(
            margin: EdgeInsets.only(left: 16.0, right: 39.0),
            child: child),
        hintText: hinttext,
      ),
    );
  }
}
