import 'package:drinks/components/myImages.dart';
import 'package:drinks/constatns/drinksList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';



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
      child: Card(
        margin: EdgeInsets.all(10),
        color: Colors.red,
        child: Text("hello wworld"),
      )
    );
  }
}
