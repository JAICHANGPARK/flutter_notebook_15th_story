import 'package:flutter/material.dart';

import 'ui/tma_home_page.dart';


class TaskManagementApp extends StatelessWidget {
  const TaskManagementApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TmaHomePage(),

    );
  }
}
