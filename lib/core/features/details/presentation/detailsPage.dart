import 'package:flutter/material.dart';

class Detailspage extends StatelessWidget {
  static route() => MaterialPageRoute(
    builder: (context) => Detailspage(),
  );

  const Detailspage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Hello Wrold", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 50
        ),),
      ),
    );
  }
}
