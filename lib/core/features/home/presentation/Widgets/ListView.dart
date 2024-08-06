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
    return const Padding(
      padding: EdgeInsets.fromLTRB(30, 80, 20, 10),
      child: Center(
        child: Text("hello world"),
      )
    );
  }
}
