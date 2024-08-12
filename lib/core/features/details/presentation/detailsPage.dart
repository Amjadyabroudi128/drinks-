
import 'package:drinks/components/sizedBox.dart';
import 'package:flutter/material.dart';
import '../../../../constatns/Constants.dart';
import '../../models/drinkModel.dart';

class Detailspage extends StatelessWidget {
  static const String id = "detailsPage";
  final Drinks drink;

  const Detailspage({super.key, required this.drink});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
              ),

            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: drink.color,
              ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left:3 ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(icon: goBack, onPressed: (){
                            Navigator.of(context).pop();
                          },),
                          sizedBox(width: 3,),
                          Text(drink.name, style: TextStyle(color: Colors.white, fontSize: 30),),
                        ],
                      )
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }

}

