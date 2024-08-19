import 'package:flutter/material.dart';

import '../../../../../components/IconButton.dart';
import '../../../../../components/myImages.dart';
import '../../../../../constatns/Constants.dart';

class myRow extends StatelessWidget {
  const myRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CardImage(),
        Spacer(),
        BagIcon()
      ],
    );
  }
}

class CardImage extends StatelessWidget {
  const CardImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const CircleBorder(),
      clipBehavior: Clip.antiAlias,
      child: Image.asset(myImages.amjad, height: 58,),
    );
  }
}

class BagIcon extends StatelessWidget {
  const BagIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyIcons(
      icon: bag,
      size: 42,
      clr: Colors.black,
      onPressed: (){
      },
    );
  }
}
