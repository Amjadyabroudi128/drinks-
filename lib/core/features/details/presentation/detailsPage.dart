
import 'dart:ui';

import 'package:drinks/components/sizedBox.dart';
import 'package:drinks/core/features/details/presentation/widgets/Icons.dart';
import 'package:drinks/core/features/details/presentation/widgets/cup.dart';
import 'package:drinks/core/features/details/presentation/widgets/detailsBar.dart';
import 'package:flutter/material.dart';
import '../../../../components/IconButton.dart';
import '../../../../constatns/Constants.dart';
import '../../../../constatns/TextStyles.dart';
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

   late int price = 2;
   @override
  void initState() {
    price;
    super.initState();
  }
  int Quantity = 0;
  void increment () {
    setState(() {
      Quantity ++;
    });
  }
  void decrement() {
    setState(() {
      if (Quantity > 0) {
        Quantity--;
      }
    });
  }
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
                            Padding(
                              padding: const EdgeInsets.only(left: 140),
                              child: Row(
                                children: [
                                  MyIcons(
                                    icon: remove,
                                    onPressed: (){
                                      decrement();
                                    },
                                  ),
                                  sizedBox(width: 9,),
                                  Text("$Quantity", style: TextStyles.quantity),
                                  sizedBox(width: 10,),
                                  MyIcons(
                                    icon: add,
                                    onPressed: (){
                                      increment();
                                    },
                                  )
                                ],
                              ),
                            )
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
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start, // Aligns text and icon at the top
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to the start of the column
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),  // Add spacing between the RichText and Text widgets
                                  child: RichText(
                                    text: const TextSpan(
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: '500',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 36,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' ml',
                                          style: TextStyle(
                                            color: Colors.black45,
                                            fontSize: 27,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  "£${price * Quantity}",
                                  style: TextStyle(fontSize: 32),
                                ),
                              ],
                            ),
                            Spacer(), // Add spacing between the text and the icon
                            Stack(
                              children: [
                                Container(
                                decoration: BoxDecoration(
                                  color: widget.drink.color,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height: 88,
                                width: 80,
                                child: MyIcons(
                                  icon: bag,
                                  size: 42,
                                  onPressed: () {
                                  },
                                ),
                              ),
                                Positioned(
                                  top: -7,
                                  right: 2,
                                  child: Container(
                                      padding: const EdgeInsets.all(6),
                                      decoration:  BoxDecoration(
                                        color: widget.drink.color,
                                        shape: BoxShape.circle,
                                      ),
                                    child:  Text(
                                      "$Quantity",
                                      style: TextStyle(color: Colors.white, fontSize: 16),
                                    ),
                                  ),

                                )
                              ]
                            ),
                          ],
                        )

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
