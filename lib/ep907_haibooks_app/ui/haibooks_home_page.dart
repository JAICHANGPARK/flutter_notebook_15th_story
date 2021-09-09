import 'package:flutter/material.dart';

class HaibooksHomePage extends StatefulWidget {
  const HaibooksHomePage({Key? key}) : super(key: key);

  @override
  _HaibooksHomePageState createState() => _HaibooksHomePageState();
}

class _HaibooksHomePageState extends State<HaibooksHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 4, child: Placeholder()),
            Expanded(flex: 15, child: Placeholder()),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(

        ),
      )
    );
  }
}
