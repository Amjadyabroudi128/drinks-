import 'package:flutter/material.dart';

import '../../../../../components/IconButton.dart';
import '../../../../../constatns/Constants.dart';
import '../../../../../constatns/TextStyles.dart';

class RowIcons extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const RowIcons({
    Key? key,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 140.0),
      child: Row(
        children: [
          MyIcons(
            icon: remove,
            onPressed: onDecrement,
          ),
          SizedBox(width: 9),
          Text("$quantity", style: TextStyles.quantity),
          SizedBox(width: 10),
          MyIcons(
            icon: add,
            onPressed: onIncrement,
          ),
        ],
      ),
    );
  }
}
