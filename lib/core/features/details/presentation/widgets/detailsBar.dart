import 'package:drinks/components/IconButton.dart';
import 'package:drinks/core/features/details/presentation/detailsPage.dart';
import 'package:drinks/core/features/home/presentation/Widgets/homeViewBody.dart';
import 'package:flutter/material.dart';

import '../../../../../components/sizedBox.dart';
import '../../../../../constatns/Constants.dart';
import '../../../../../constatns/TextStyles.dart';
import '../../../models/drinkModel.dart';

class detailsBar extends StatelessWidget {
  const detailsBar({
    super.key,
    required this.drink,
  });

  final Drinks drink;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyIcons(
          icon: goBack,
          onPressed: (){
            Navigator.of(context).pushNamed(homeViewBody.id);
          },
        ),
        sizedBox(width: 3,),
        Text(drink.name, style: TextStyles.drinkName,),
      ],
    );
  }
}
