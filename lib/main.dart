import 'package:drinks/core/features/themes/themes.dart';
import 'package:flutter/material.dart';

import 'core/features/details/presentation/detailsPage.dart';
import 'core/features/home/home.dart';
import 'core/features/home/presentation/Widgets/homeViewBody.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.themeData,
      home: const MyHomePage(),
      routes: {
        "home": (context) => homeViewBody(),
        // Detailspage.id: (context) => Detailspage(),
      },
    );
  }
}


