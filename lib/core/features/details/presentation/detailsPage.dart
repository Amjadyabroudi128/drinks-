
import 'package:drinks/components/sizedBox.dart';
import 'package:drinks/core/features/details/presentation/widgets/Icons.dart';
import 'package:drinks/core/features/details/presentation/widgets/cup.dart';
import 'package:drinks/core/features/details/presentation/widgets/detailsBar.dart';
import 'package:flutter/material.dart';
import '../../home/presentation/Widgets/CupPainter.dart';
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
                child:  Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DrinkSizeOption(size: 'Small', image: widget.drink.image, drink: widget.drink ,),
                          DrinkSizeOption(size: 'Medium', image: widget.drink.image, drink: widget.drink,),
                          DrinkSizeOption(size: 'Large', image: widget.drink.image, drink: widget.drink, ),
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
class DrinkSizeOption extends StatelessWidget {
  final String size;
  final Drinks drink;
  final String image;

  const DrinkSizeOption({
    super.key,
    required this.size,
    required this.drink,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    // Map size to corresponding width and height
    Size getSizeDimensions() {
      switch (size.toLowerCase()) {
        case 'small':
          return Size(30.0, 40.0); // width, height for small
        case 'medium':
          return Size(40.0, 60.0); // width, height for medium
        case 'large':
          return Size(50.0, 80.0); // width, height for large
        default:
          return Size(30.0, 40.0); // default dimensions if size doesn't match
      }
    }

    final sizeDimensions = getSizeDimensions();

    // Scaling factor to make the image smaller inside the cup
    final double scaleFactor = 0.7; // Adjust this value as needed

    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: <Widget>[
            CustomPaint(
              painter: CupPainter(drink: drink),
              child: Container(
                color: Colors.transparent,
                alignment: Alignment.center,
                child: Transform.scale(
                  scale: scaleFactor,
                  child: Image.asset(
                    drink.image,
                    width: sizeDimensions.width,
                    height: sizeDimensions.height,
                  ),
                ),
              ),
            ),
            Text(size, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
