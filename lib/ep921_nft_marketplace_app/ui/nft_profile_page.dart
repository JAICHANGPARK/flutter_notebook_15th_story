import 'package:flutter/material.dart';

class NFTProfilePage extends StatefulWidget {
  const NFTProfilePage({Key? key}) : super(key: key);

  @override
  _NFTProfilePageState createState() => _NFTProfilePageState();
}

class _NFTProfilePageState extends State<NFTProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [IconButton(onPressed: () {}, icon: Icon(Icons.arrow_left_outlined))],
            )
          ],
        ),
      ),
    );
  }
}
