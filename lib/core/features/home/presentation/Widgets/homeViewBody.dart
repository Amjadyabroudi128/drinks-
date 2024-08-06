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
       child: const Scaffold(
         body: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             CustomAppBar(),
             Searchfiled(),
           ],
         ),
       ),
     );
   }
 }

