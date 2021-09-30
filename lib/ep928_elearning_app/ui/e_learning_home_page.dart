import 'package:flutter/material.dart';

class ELearningHomePage extends StatefulWidget {
  const ELearningHomePage({Key? key}) : super(key: key);

  @override
  _ELearningHomePageState createState() => _ELearningHomePageState();
}

class _ELearningHomePageState extends State<ELearningHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Placeholder(),
              flex: 1,
            ),
            Expanded(
              child: SingleChildScrollView(),
              flex: 10,
            ),
            Expanded(
              child: Placeholder(),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
