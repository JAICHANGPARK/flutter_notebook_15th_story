import 'package:flutter/material.dart';

class TmaHomePage extends StatefulWidget {
  const TmaHomePage({Key? key}) : super(key: key);

  @override
  _TmaHomePageState createState() => _TmaHomePageState();
}

class _TmaHomePageState extends State<TmaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                left: 16,
                right: 16,
                bottom: 16,
                child: Container(
                  height: 64,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(16)
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
