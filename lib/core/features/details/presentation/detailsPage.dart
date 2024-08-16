import 'dart:ui';
import 'package:drinks/components/sizedBox.dart';
import 'package:drinks/core/features/details/presentation/widgets/Icons.dart';
import 'package:drinks/core/features/details/presentation/widgets/RowDetails.dart';
import 'package:drinks/core/features/details/presentation/widgets/cupDetails.dart';
import 'package:drinks/core/features/details/presentation/widgets/detailsBar.dart';
import 'package:drinks/core/features/themes/colors.dart';
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
  String _selectedSize = 'medium';
  int quantity = 1;
  int price = 2;
  int volume = 500;
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
                        Column(
                          children: [
                            sizedBox(height: 50,),
                            cupDetails(widget: widget),
                            sizedBox(height: 25),
                          ],
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
                          return _buildSizeOption(size, isSelected);
                        })
                            .toList(),
                      ),
                      sizedBox(height: 90,),
                      RowDetails(price: price, volume: volume, quantity: quantity,widget: widget,),
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
            _updatePriceAndVolume(size);
            quantity = 0;
          }
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
              color: isSelected ? widget.drink.color : unSelected,
              fontSize: 18.0,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          sizedBox(height: 56,)
        ],
      ),
    );
  }
}
