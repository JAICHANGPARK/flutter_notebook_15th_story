import 'package:flutter/material.dart';

import 'ui/haibooks_home_page.dart';

class HaibooksApp extends StatelessWidget {
  const HaibooksApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HaibooksHomePage(),
    );
  }
}
