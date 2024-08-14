import 'package:flutter/material.dart';

import '../../../../../components/IconButton.dart';
import '../../../../../constatns/Constants.dart';
import '../../../models/drinkModel.dart';

class Rowdetails extends StatelessWidget {
  const Rowdetails({super.key, required this.drink});
  final Drinks drink;

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
              "£5",
              style: TextStyle(fontSize: 32),
            ),
          ],
        ),
        Spacer(), // Add spacing between the text and the icon
        Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: drink.color,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 88,
                width: 80,
                child: MyIcons(
                  icon: bag,
                  size: 42,
                  onPressed: () {
                    // Your onPressed logic here
                  },
                ),
              ),
              Positioned(
                top: -7,
                right: 2,
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration:  BoxDecoration(
                    color: drink.color,
                    shape: BoxShape.circle,
                  ),
                  child: const Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),

              )
            ]
        ),
      ],
    );
  }
}
