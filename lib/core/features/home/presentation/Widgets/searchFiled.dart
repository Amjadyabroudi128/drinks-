import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchfiled extends StatelessWidget {
  const Searchfiled({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(15.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Search',
          hintText: 'search for drinks',
        ),
      ),
    );
  }
}
