import 'dart:ui';
import 'package:drinks/components/myContainer.dart';
import 'package:drinks/components/sizedBox.dart';
import 'package:drinks/constatns/Constants.dart';
import 'package:drinks/core/features/details/presentation/widgets/Icons.dart';
import 'package:drinks/core/features/details/presentation/widgets/RowDetails.dart';
import 'package:drinks/core/features/details/presentation/widgets/cup.dart';
import 'package:drinks/core/features/details/presentation/widgets/detailsBar.dart';
import 'package:drinks/core/features/themes/colors.dart';
import 'package:flutter/material.dart';
import '../../../../components/appSizing.dart';
import '../../enums/Enums.dart';
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
  DrinkSize _selectedSize = DrinkSize.small;
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

  void _updatePriceAndVolume(DrinkSize size) {
    price = size == DrinkSize.small ? 2 : size == DrinkSize.medium ? 4 : 6;
    volume = size == DrinkSize.small ? 250 : size == DrinkSize.medium ? 500 : 750;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              myContainer(
                height: AppSizing.height54(context),
                width: AppSizing.width(context),
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
                            CupPlace(drink: widget.drink),
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
              myContainer(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: DrinkSize.values.map((size) {
                          bool isSelected = _selectedSize == size;
                          return _buildSizeOption(size, isSelected);
                        }).toList(),
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

  Widget _buildSizeOption(DrinkSize size, bool isSelected) {
    Size getSizeDimensions(DrinkSize size) {
      return size == DrinkSize.small
          ? Size(48, 65)
          : size == DrinkSize.medium
          ? Size(60.0, 80.0)
          : size == DrinkSize.large
          ? Size(80.0, 90.0)
          : Size(30.0, 40.0);
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
            child: myContainer(
              width: getSizeDimensions(size).width,
              height: getSizeDimensions(size).height,
              alignment: Alignment.center,
              child: drinkImage(widget: widget),
            ),
          ),
          sizedBox(height: 8,),
          Text(
            size.toString().split('.').last,
            style: TextStyle(
              color: isSelected ? widget.drink.color : unSelected,
              fontSize: 18.0,
              fontWeight: isSelected ? bold: normal,
            ),
          ),
          sizedBox(height: 56,)
        ],
      ),
    );
  }
}

class drinkImage extends StatelessWidget {
  const drinkImage({
    super.key,
    required this.widget,
  });

  final Detailspage widget;

  @override
  Widget build(BuildContext context) {
    return Image.asset(widget.drink.image, width: 32, height: 63);
  }
}
