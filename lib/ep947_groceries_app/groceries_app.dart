import 'package:flutter/material.dart';

import 'src/ui/groceries_main_page.dart';

class GroceriesApp extends StatelessWidget {
  const GroceriesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: GroceriesMainPage(),
    );
  }
}
