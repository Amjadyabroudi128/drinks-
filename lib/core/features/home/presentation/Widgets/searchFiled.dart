import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchfiled extends StatelessWidget {
  const Searchfiled({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Search',
        hintText: 'Enter search term',
      ),
    );
  }
}
