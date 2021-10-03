import 'package:flutter/material.dart';

class FindJobMainPage extends StatefulWidget {
  const FindJobMainPage({Key? key}) : super(key: key);

  @override
  _FindJobMainPageState createState() => _FindJobMainPageState();
}

class _FindJobMainPageState extends State<FindJobMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(),
            left: 0,
            right: 0,
            bottom: 0,
          ),
        ],
      ),
    );
  }
}
