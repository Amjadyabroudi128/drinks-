import 'package:drinks/core/features/home/presentation/Widgets/searchFiled.dart';
import 'package:flutter/cupertino.dart';
import 'CustomAppBar.dart';

class homeViewBody extends StatelessWidget {
   const homeViewBody({super.key});

   @override
   Widget build(BuildContext context) {
     return const Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         CustomAppBar(),
         Searchfiled()
       ],
     );
   }
 }

