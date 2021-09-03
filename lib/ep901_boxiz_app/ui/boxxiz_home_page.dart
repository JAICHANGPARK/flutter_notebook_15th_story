import 'package:badges/badges.dart';
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
              child: Row(
                children: [CircleAvatar(
                  radius: 12,
                ),
                Badge(
                  child: Icon(Icons.notifications, color: Colors.white,),
                )],
              ),
              flex: 2,
            ),
            Expanded(
              child: Placeholder(),
              flex: 20,
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                ],
              ),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
