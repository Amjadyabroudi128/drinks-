import 'package:drinks/core/features/home/presentation/Widgets/ListView.dart';
import 'package:drinks/core/features/home/presentation/Widgets/searchFiled.dart';
import 'package:drinks/core/features/models/drinkModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CustomAppBar.dart';

class homeViewBody extends StatelessWidget {
   const homeViewBody({super.key, this.drink});
   final Drinks? drink;
   @override
   Widget build(BuildContext context) {

     return GestureDetector(
       onTap: () => FocusScope.of(context).requestFocus( FocusNode()),
       child:  Scaffold(
         body: Padding(
           padding: const EdgeInsets.all(8.0),
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
     );
   }
 }

