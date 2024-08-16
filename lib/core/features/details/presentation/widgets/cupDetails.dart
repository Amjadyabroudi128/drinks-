import 'package:flutter/cupertino.dart';

import '../../../home/presentation/Widgets/CupPainter.dart';
import '../detailsPage.dart';

class cupDetails extends StatelessWidget {
  const cupDetails({
    super.key,
    required this.widget,
  });

  final Detailspage widget;

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
