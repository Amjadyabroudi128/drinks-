 import 'package:flutter/cupertino.dart';
import 'CustomAppBar.dart';

class homeViewBody extends StatelessWidget {
   const homeViewBody({super.key});

   @override
   Widget build(BuildContext context) {
     return const Column(
       children: [
         CustomAppBar(),
       ],
     );
   }
 }

