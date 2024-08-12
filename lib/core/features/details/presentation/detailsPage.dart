
import 'package:drinks/components/sizedBox.dart';
import 'package:drinks/core/features/details/presentation/widgets/cup.dart';
import 'package:drinks/core/features/details/presentation/widgets/detailsBar.dart';
import 'package:flutter/material.dart';
import '../../models/drinkModel.dart';

class Detailspage extends StatefulWidget {
  static const String id = "detailsPage";
  final Drinks drink;

  const Detailspage({super.key, required this.drink});

  @override
  State<Detailspage> createState() => _DetailspageState();
}

class _DetailspageState extends State<Detailspage> {
  int Quantity = 0;
  void increment () {
    setState(() {
      Quantity ++;
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
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
                color: widget.drink.color,
              ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, left:3 ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      detailsBar(drink: widget.drink),
                      CupPlace(drink: widget.drink),
                       sizedBox(height: 25,),
                       Padding(
                         padding: const EdgeInsets.only(left: 140),
                         child: Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove_circle_outline, color: Colors.white,size: 30,),
                                onPressed: () {
                                  // Your logic to decrease quantity or perform another action
                                },
                              ),
                              sizedBox(width: 9,),
                              Text("$Quantity", style: TextStyle(color: Colors.white, fontSize: 30),),
                              sizedBox(width: 10,),
                              IconButton(
                                icon: Icon(Icons.add_circle_outline, color: Colors.white,size: 30,),
                                onPressed: () {
                                 increment();
                                },
                              ),
                            ],
                          ),
                       ),
                    ],
                  ),
                )
            ),
          ],
        ),
      );
  }
}

