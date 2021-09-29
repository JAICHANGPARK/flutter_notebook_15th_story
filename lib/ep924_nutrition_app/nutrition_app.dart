import 'package:flutter/material.dart';

import 'ui/nutrition_home_page.dart';

/// 101 95 177 65 5f b1
/// 110 105 182  6e 69 b6
Color purpleColor = Color(0xff655fb1);
Color purpleLightColor = Color(0xff6e69b6);

class NutritionApp extends StatelessWidget {
  const NutritionApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NutritionHomePage(),
    );
  }
}
