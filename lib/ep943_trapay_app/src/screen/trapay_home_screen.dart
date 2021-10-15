import 'package:flutter/material.dart';

class TrapayHomeScreen extends StatefulWidget {
  const TrapayHomeScreen({Key? key}) : super(key: key);

  @override
  _TrapayHomeScreenState createState() => _TrapayHomeScreenState();
}

class _TrapayHomeScreenState extends State<TrapayHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers),
            label: "Services",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Chatting",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervisor_account),
            label: "Groups",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: "More",
          )
        ],
      ),
    );
  }
}
