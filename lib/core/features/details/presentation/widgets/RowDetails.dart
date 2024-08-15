import 'package:flutter/material.dart';

import '../../../../../components/IconButton.dart';
import '../../../../../constatns/Constants.dart';
import '../../../../../constatns/TextStyles.dart';
import '../detailsPage.dart';

class RowDetails extends StatelessWidget {
  const RowDetails({
    super.key,
    required this.price,
    required this.Quantity,
    required this.widget,
  });

  final int price;
  final int Quantity;
  final Detailspage widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start, // Aligns text and icon at the top
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Aligns children to the start of the column
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),  // Add spacing between the RichText and Text widgets
              child: RichText(
                text:  TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '500',
                      style: TextStyles.volume
                    ),
                    TextSpan(
                      text: ' ml',
                      style: TextStyles.mL
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "£${price * Quantity}",
              style: TextStyles.price,
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
                    style: TextStyles.bagQuantity,
                  ),
                ),

              )
            ]
        ),
      ],
    );
  }
}
