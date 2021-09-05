import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep901_boxiz_app/boxiz_theme.dart';

import 'boxxiz_home_page.dart';

class BoxizApp extends StatelessWidget {
  const BoxizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(scaffoldBackgroundColor: BoxizTheme.backgroundColor),
      home: BoxizHomePage(),
    );
  }
}
