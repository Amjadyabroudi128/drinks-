import 'package:drinks/components/myImages.dart';
import 'package:drinks/constatns/drinksList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class DrinksList extends StatefulWidget {
  const DrinksList({super.key,});



  @override
  State<DrinksList> createState() => _DrinksListState();
}

class _DrinksListState extends State<DrinksList> {

  @override
  Widget build(BuildContext context) {
    return const ScrollConfiguration(
      behavior: ScrollBehavior(),
      child: Column(
        children: [
          Text("hello ")
        ],
      ),
    );
  }
}
