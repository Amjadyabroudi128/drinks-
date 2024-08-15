
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

  late int price = 2;

  @override
  void initState() {
    price;
    super.initState();
  }

  int Quantity = 0;

  void increment() {
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

  String _selectedSize = 'medium';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.54,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: widget.drink.color,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50, left: 3),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          detailsBar(drink: widget.drink),
                          CupPlace(drink: widget.drink),
                          sizedBox(height: 25,),
                          RowIcons(quantity: Quantity,
                              onIncrement: increment,
                              onDecrement: decrement)
                        ],
                      ),
                    ),
                  )
              ),
              Container(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildSizeOption('small', _selectedSize == 'small'),
                            _buildSizeOption('medium', _selectedSize == 'medium'),
                            _buildSizeOption('large', _selectedSize == 'large'),
                          ],
                        ),
                        SizedBox(height: 90,),
                        RowDetails(
                            price: price, Quantity: Quantity, widget: widget)
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

  Widget _buildSizeOption(String size, bool isSelected) {
    Size getSizeDimensions(String size) {
      switch (size.toLowerCase()) {
        case 'small':
          return Size(40.0, 60.0);
        case 'medium':
          return Size(60.0, 80.0);
        case 'large':
          return Size(80.0, 90.0);
        default:
          return Size(30.0, 40.0);
      }
    }
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSize = size;
        });
      },
      child: AnimatedOpacity(
        opacity: isSelected ? 1.0 : 0.3,
        duration: Duration(milliseconds: 300),
        child: Column(
          children: [
            CustomPaint(
              painter: CupPainter(drink: widget.drink),
              child: Container(
                width: getSizeDimensions(size).width,
                height: getSizeDimensions(size).height,
                alignment: Alignment.center,
                child: Image.asset(widget.drink.image, width: 25, height: 63),
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              size,
              style: TextStyle(
                color: isSelected ? Colors.red : Colors.grey,
                fontSize: 18.0,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );

  }

}
