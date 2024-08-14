
import 'dart:ui';
import 'package:drinks/components/sizedBox.dart';
import 'package:drinks/core/features/details/presentation/widgets/Icons.dart';
import 'package:drinks/core/features/details/presentation/widgets/RowDetails.dart';
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
        body: ScrollConfiguration(
          behavior: ScrollBehavior(),
          child: SingleChildScrollView(
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
                        ),
                        SizedBox(height: 90,),
                        Rowdetails(drink: widget.drink)

                      ],
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      );
  }
}
class DrinkSizeOption extends StatefulWidget {
  final String size;
  final Drinks drink;
  final String image;

  const DrinkSizeOption({
    Key? key,
    required this.size,
    required this.drink,
    required this.image,
  }) : super(key: key);

  @override
  _DrinkSizeOptionState createState() => _DrinkSizeOptionState();
}

class _DrinkSizeOptionState extends State<DrinkSizeOption> {
  String? selectedSize;

  // Function to handle selection
  void selectSize(String size) {
    setState(() {
      selectedSize = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Map size to corresponding width and height
    Size getSizeDimensions(String size) {
      switch (size.toLowerCase()) {
        case 'small':
          return Size(30.0, 40.0);
        case 'medium':
          return Size(40.0, 60.0);
        case 'large':
          return Size(50.0, 80.0);
        default:
          return Size(30.0, 40.0);
      }
    }

    // Scaling factor to make the image smaller inside the cup
    final double scaleFactor = 0.7;

    return GestureDetector(
      onTap: () => selectSize(widget.size),
      child: Container(

        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          children: <Widget>[
            // Apply blur effect to non-selected items
            if (selectedSize != null && selectedSize != widget.size)
              ClipRect(
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                  child: _buildCupImage(getSizeDimensions(widget.size), scaleFactor),
                ),
              )
            else
              _buildCupImage(getSizeDimensions(widget.size), scaleFactor),
            Text(widget.size, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }

  // Widget to build the cup image
  Widget _buildCupImage(Size sizeDimensions, double scaleFactor) {
    return CustomPaint(
      painter: CupPainter(drink: widget.drink),
      child: Container(
        color: Colors.transparent,
        alignment: Alignment.center,
        child: Transform.scale(
          scale: scaleFactor,
          child: Image.asset(
            widget.drink.image,
            width: sizeDimensions.width,
            height: sizeDimensions.height,
          ),
        ),
      ),
    );
  }
}
