import 'package:drinks/core/features/models/drinkModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../constatns/TextStyles.dart';

class DrinkCard extends StatelessWidget {
  final Drinks drink;

  DrinkCard({required this.drink});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          height: 150,
          width: 170,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(0, 5),
              ),

            ],
          ),
          child: Container(
            height: 160,
            color: drink.color.withOpacity(0.81),
            child: Stack(
              children: [
                Center(
                  child: CustomPaint(
                    size: Size(100, 150),
                    painter: CupPainter(),
                    child: Container(
                      width: 100,
                      height: 150,
                      alignment: Alignment.center,
                      // child: Text(
                      //   'Press Me',
                      //   style: TextStyle(color: Colors.white, fontSize: 16),
                      // ),
                      child: Image.asset(drink.image, width: 50, height: 50,),

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 6,),
        Text(drink.name, style: TextStyles.drinksNames,)
      ],
    );
  }

}
class CupPainter extends CustomPainter {
  late final Drinks drink;

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.brown
      ..style = PaintingStyle.fill;

    Path path = Path();

    // Define the cup shape
    path.moveTo(size.width * 0.29, size.height);
    path.lineTo(size.width * 0.71, size.height);
    path.lineTo(size.width * 0.9, 0);
    path.lineTo(size.width * 0.1, 0);
    path.close();

    // Shadow Paint
    Paint shadowPaint = Paint()
      ..color = Colors.black.withOpacity(0.3) // Black shadow with some opacity
      ..style = PaintingStyle.fill
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 8); // Blur effect for soft shadow

    // Draw shadow by translating the cup slightly down and to the right
    canvas.save();
    canvas.translate(4, 4); // Adjust shadow offset to match the look in the image
    canvas.drawPath(path, shadowPaint);
    canvas.restore();

    // Draw the actual cup
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
