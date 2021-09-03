import 'package:flutter/material.dart';

import 'boxxiz_home_page.dart';

class BoxizApp extends StatelessWidget {
  const BoxizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BoxizHomePage(),
    );
  }
}
