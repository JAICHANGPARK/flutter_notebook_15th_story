import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep943_trapay_app/src/screen/trapay_home_screen.dart';


class TrapayApp extends StatelessWidget {
  const TrapayApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      restorationScopeId: "trapayApp",
      home: TrapayHomeScreen(),
    );
  }
}
