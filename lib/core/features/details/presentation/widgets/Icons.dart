import 'package:drinks/constatns/Constants.dart';
import 'package:flutter/material.dart';

import '../../../../../components/sizedBox.dart';

class myIcons extends StatefulWidget {
  const myIcons({super.key});

  @override
  State<myIcons> createState() => _myIconsState();
}

class _myIconsState extends State<myIcons> {
  int Quantity = 0;
  void increment () {
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
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 140),
      child: Row(
        children: [
          IconButton(
            icon: remove,
            onPressed: () {
              decrement();
            },
          ),
          sizedBox(width: 9,),
          Text("$Quantity", style: TextStyle(color: Colors.white, fontSize: 30),),
          sizedBox(width: 10,),
          IconButton(
            icon: add,
            onPressed: () {
              increment();
            },
          ),
        ],
      ),
    );
  }
}
