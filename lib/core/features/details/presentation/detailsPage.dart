
import 'package:flutter/material.dart';

import '../../models/drinkModel.dart';

class Detailspage extends StatelessWidget {
  static const String id = "detailsPage";
  final Drinks drink;

  const Detailspage({super.key, required this.drink});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Padding(
        padding: const EdgeInsets.only(left: 10,top: 50),
        child: Container(
          decoration: BoxDecoration(

          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(icon: Icon(Icons.arrow_back) , onPressed: (){
                    Navigator.of(context).pop();
                  },),
                  SizedBox(width: 20,),
                  Text(drink.name, style: TextStyle(fontSize: 40),)
                ],
              ),
            ],
          ),
        ),
           ),
     );
  }
}
