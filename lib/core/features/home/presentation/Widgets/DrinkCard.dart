import 'package:drinks/core/features/models/drinkModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DrinkCard extends StatelessWidget {
  final Drinks drink;

  DrinkCard({required this.drink});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 100,
          width: 150,
          decoration: BoxDecoration(
            color: drink.color.withOpacity(0.7),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),

            ],
          ),
          child: Center(
            child: Image.asset(drink.image, width: 50, height: 50,),
          ),
        ),
        SizedBox(height: 6,),
        Text(drink.name)
      ],
    );
    // return Container(
    //   height: 200,
    //   width: 200,
    //   child: Card(
    //     margin: EdgeInsets.all(10.0),
    //     color: drink.color.withOpacity(0.7),
    //     child: ListTile(
    //       leading: Image.asset(drink.image, width: 50, height: 50), // Add your images in the assets folder
    //       title: Text(drink.name),
    //     ),
    //   ),
    // );
  }
}