import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(top: 60, left: 30),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              text: 'Hello ',
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(text: 'Amjad', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    ),
        ],
      ),
    );
  }


}
