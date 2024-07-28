import 'package:drinks/constatns/Constants.dart';
import 'package:flutter/material.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 90, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Hello ',
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
                TextSpan(
                  text: 'Friend',
                  style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          sizedBox,// Added space between texts
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'What would  you ',
                  style: TextStyle(fontSize: 16.0, color: Colors.black),
                ),
                TextSpan(
                  text: 'like',
                  style: TextStyle(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );


  }


}
