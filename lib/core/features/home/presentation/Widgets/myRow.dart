import 'package:flutter/material.dart';

import '../../../../../constatns/Constants.dart';

class myRow extends StatelessWidget {
  const myRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAlias,
          child: Image.asset("images/amjad.jpg", height: 58,),
        ),
        Spacer(),
        IconButton(
          onPressed: (){},
          icon: bag
        )
      ],
    );
  }
}
