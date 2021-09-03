import 'package:flutter/material.dart';

class BoxizHomePage extends StatefulWidget {
  const BoxizHomePage({Key? key}) : super(key: key);

  @override
  _BoxizHomePageState createState() => _BoxizHomePageState();
}

class _BoxizHomePageState extends State<BoxizHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Placeholder(),
              flex: 2,
            ),
            Expanded(
              child: Placeholder(),
              flex: 20,
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
