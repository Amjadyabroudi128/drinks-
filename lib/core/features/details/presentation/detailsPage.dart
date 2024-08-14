
import 'package:drinks/components/sizedBox.dart';
import 'package:drinks/core/features/details/presentation/widgets/Icons.dart';
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
  String selectedSize = 'medium'; // Default selected size

  late int price;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: widget.drink.color,
                ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, left:3 ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          detailsBar(drink: widget.drink),
                          CupPlace(drink: widget.drink),
                           sizedBox(height: 25,),
                           myIcons(),
                        ],
                      ),
                    ),
                  )
              ),
              Container(
                child: Center(child: Text("Hello" , )),
              ),
            ],
          ),
        ),
      );
  }
}

