import 'package:drinks/core/features/home/presentation/Widgets/ListView.dart';
import 'package:drinks/core/features/home/presentation/Widgets/searchFiled.dart';
import 'package:drinks/core/features/models/drinkModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CustomAppBar.dart';

class homeViewBody extends StatelessWidget {
  static const String id = "home";
  const homeViewBody({super.key, this.drink});
   final Drinks? drink;
   @override
   Widget build(BuildContext context) {

     return GestureDetector(
       onTap: () => FocusScope.of(context).requestFocus( FocusNode()),
       child:  const Scaffold(
         body: Padding(
           padding: EdgeInsets.all(8.0),
           child: ScrollConfiguration(
             behavior: ScrollBehavior(),
             child: SingleChildScrollView(
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   CustomAppBar(),
                   Searchfiled(),
                   DrinksList()
                 ],
               ),
             ),
           ),
         ),
       ),
     );
   }
 }

