import 'package:flutter/material.dart';

import 'ui/find_job_main_page.dart';


class FindJobApp extends StatelessWidget {
  const FindJobApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FindJobMainPage(),
    );
  }
}
