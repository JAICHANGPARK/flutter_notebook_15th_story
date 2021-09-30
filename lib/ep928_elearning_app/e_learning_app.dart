import 'package:flutter/material.dart';

import 'ui/e_learning_home_page.dart';

class ELearningApp extends StatelessWidget {
  const ELearningApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ELearningHomePage(),
    );
  }
}
