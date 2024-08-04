import 'package:drinks/constatns/Constants.dart';
import 'package:drinks/constatns/TextStyles.dart';
import 'package:flutter/material.dart';

import 'myRow.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 40, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          myRow(),
          SizedBox(height: 10,),
          RichText(
            text:  TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'Hello,',
                  style: TextStyles.kFont20
                ),
                TextSpan(
                  text: 'Amjad',
                  style: TextStyles.Bold20,
                ),
              ],
            ),
          ),
          sizedBox,// Added space between texts
          RichText(
            text:  TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: 'What would you ',
                  style: TextStyles.kFont19
                ),
                TextSpan(
                  text: 'like?',
                  style: TextStyle(fontSize: 19.0, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );


  }


}
