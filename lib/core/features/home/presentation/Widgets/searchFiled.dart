import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchfiled extends StatefulWidget {
  const Searchfiled({super.key});

  @override
  State<Searchfiled> createState() => _SearchfiledState();
}

class _SearchfiledState extends State<Searchfiled> {
   TextEditingController searchController = TextEditingController();
   @override
   void dispose() {
     searchController.dispose();
     super.dispose();
   }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: TextField(
      controller: searchController,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'search for drinks',
      ),
    ),
    );
  }
}
