import 'package:drinks/constatns/Constants.dart';
import 'package:drinks/core/features/themes/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../components/customTextField.dart';
import '../../../../../components/myContainer.dart';

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
      padding: const EdgeInsets.fromLTRB(29, 10, 20, 1),
      child: myContainer(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.0),
          gradient: LinearGradient(
            colors: searchFiled,
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            stops: [0.49, 0.10],
          )
        ),
        child: customTextField(
          myController: searchController,
          prefixIcon: myContainer(
            margin: EdgeInsets.only(left: 16.0, right: 39.0),
            child: search,
          ),
          hinttext: "Search For Drinks",
        ),
      ),
    );
  }
}
