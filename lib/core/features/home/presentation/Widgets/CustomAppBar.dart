import 'package:drinks/components/sizedBox.dart';
import 'package:drinks/constatns/TextStyles.dart';
import 'package:flutter/material.dart';

import 'myRow.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.fromLTRB(40, 40, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          myRow(),
          sizedBox(height: 10,),
          heyText(),
          sizedBox(
            height: 6,
          ),
          whatText(),
        ],
      ),
    );


  }


}

class whatText extends StatelessWidget {
  const whatText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text:  TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'What would you ',
            style: TextStyles.kFont19
          ),
          TextSpan(
            text: 'Like?',
            style: TextStyles.Bold19
          ),
        ],
      ),
    );
  }
}

class heyText extends StatelessWidget {
  const heyText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text:  TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'Hey,',
            style: TextStyles.kFont20
          ),
          TextSpan(
            text: '  Amjad',
            style: TextStyles.Bold20,
          ),
        ],
      ),
    );
  }
}
