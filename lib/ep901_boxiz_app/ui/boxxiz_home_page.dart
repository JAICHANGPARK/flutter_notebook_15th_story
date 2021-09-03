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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 16,
                    ),

                    Icon(Icons.comment_bank_outlined),
                    Text("128"),
                    Icon(Icons.vpn_key),
                    Text("0"),
                    Icon(Icons.shield),
                    Text("3"),
                    Badge(
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: Placeholder(),
              flex: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.home),
                      iconSize: 28,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.radio_button_checked),
                      iconSize: 28,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shield),
                      iconSize: 28,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.waterfall_chart),
                      iconSize: 28,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.confirmation_num_outlined),
                      iconSize: 28,
                    ),
                  ],
                ),
              ),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
