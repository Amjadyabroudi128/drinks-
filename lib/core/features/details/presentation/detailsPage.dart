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
  String _selectedSize = 'medium'; // Default selected size
  bool _showAllSizes = false; // Controls visibility of unselected sizes
  bool _showTopCup = false; // Controls visibility of the cup in the top container
  int quantity = 1;
  int price = 2; // Changed to double for fractional prices
  int volume = 500; // Default volume
  double _cupPosition = -200;
  @override
  void initState() {
    super.initState();
  }

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }

  // Method to update price and volume based on size
  void _updatePriceAndVolume(String size) {
    switch (size.toLowerCase()) {
      case 'small':
        price = 2;
        volume = 250;
        break;
      case 'medium':
        price = 4;
        volume = 500;
        break;
      case 'large':
        price = 6;
        volume = 750;
        break;
      default:
        price = 2;
        volume = 500;
    }
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
                height: MediaQuery.of(context).size.height * 0.54,
                width: MediaQuery.of(context).size.width,
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
                        Visibility(
                          visible: _showTopCup, // Cup visibility controlled by _showTopCup
                          child: Column(
                            children: [
                              SizedBox(height: 50,),
                              Center(
                                child: CustomPaint(
                                  painter: CupPainter(drink: widget.drink),
                                  child: Container(
                                    width: 120.0,
                                    height: 160.0,
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      widget.drink.image,
                                      width: 50,
                                      height: 126,
                                    ),
                                  ),
                                ),
                              ),
                              sizedBox(height: 25),
                            ],
                          ),
                        ),
                        RowIcons(
                          quantity: quantity,
                          onIncrement: increment,
                          onDecrement: decrement,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: ['small', 'medium', 'large']
                            .map((size) {
                          bool isSelected = _selectedSize == size;
                          return AnimatedOpacity(
                            opacity: isSelected || _showAllSizes ? 1.0 : 0.0,
                            duration: Duration(milliseconds: 300),
                            child: _buildSizeOption(size, isSelected),
                          );
                        })
                            .toList(),
                      ),
                      SizedBox(height: 90),
                      RowDetails(
                        price: price,
                        volume: volume, // Pass the updated volume
                        quantity: quantity,
                        widget: widget,
                      ),
                    ],
                  ),
                ),
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
          if (!isSelected) {
            _selectedSize = size;
            _updatePriceAndVolume(size); // Update price and volume based on selected size
            quantity = 0;
          }
          _showAllSizes = true; // Show all sizes when a size is selected
          _showTopCup = true; // Make the top cup visible when a size is selected
          _cupPosition = -200;
        });
      },

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
              color: isSelected ? widget.drink.color : Colors.grey,
              fontSize: 18.0,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}
