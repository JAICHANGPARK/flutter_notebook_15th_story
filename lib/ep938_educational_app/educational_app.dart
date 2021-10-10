import 'package:flutter/material.dart';

import 'src/ui/educational_home_page.dart';


class EducationalApp extends StatelessWidget {
  const EducationalApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.grey[100]
      ),
      routes: {
        "/":(context)=>EducationalHomePage()
      },
    );
  }
}
