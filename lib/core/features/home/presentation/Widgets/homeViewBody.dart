import 'package:drinks/core/features/home/presentation/Widgets/ListView.dart';
import 'package:drinks/core/features/home/presentation/Widgets/searchFiled.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CustomAppBar.dart';

class homeViewBody extends StatelessWidget {
   const homeViewBody({super.key,});
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
             DrinksList()
           ],
         ),
       ),
     );
   }
 }

