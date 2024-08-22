import 'package:drinks/components/myContainer.dart';
import 'package:flutter/material.dart';

import '../../../../../components/IconButton.dart';
import '../../../../../constatns/Constants.dart';
import '../../../../../constatns/TextStyles.dart';
import '../detailsPage.dart';

class RowDetails extends StatefulWidget {
   RowDetails({
    super.key,
    required this.price,
    required this.volume,
    required this.quantity,
    required this.widget,
  });

  final int price;
  final int volume;
  late final int quantity;
  final Detailspage widget;

  @override
  State<RowDetails> createState() => _RowDetailsState();
}

class _RowDetailsState extends State<RowDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10),
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '${widget.volume}',
                      style: TextStyles.volume,
                    ),
                    TextSpan(
                      text: ' ml',
                      style: TextStyles.mL,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10),
              child: Text(
                "£${(widget.price * widget.quantity)}",
                style: TextStyles.price,
              ),
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Stack(
            children: [
              myContainer(
                decoration: BoxDecoration(
                  color: widget.widget.drink.color,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 88,
                width: 80,
                child: MyIcons(
                  icon: bag,
                  size: 42,
                  onPressed: () {
                    setState(() {

                    });
                  },
                ),
              ),
              Positioned(
                top: -7,
                right: 2,
                child: myContainer(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: widget.widget.drink.color,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    "${widget.quantity}",
                    style: TextStyles.bagQuantity,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
