import 'package:badges/badges.dart';
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
        backgroundColor: Colors.blueGrey[50],
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(color: Colors.blueGrey[400]!, offset: Offset(0, 4)),
                    BoxShadow(color: Colors.grey[200]!, offset: Offset(0, 6))
                  ]),
                  child: Column(
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
                          Badge(
                            child: Icon(Icons.charging_station),
                            
                          ),
                        ],
                      )),
                      Expanded(child: Placeholder()),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(flex: 15, child: Placeholder()),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Container(
            height: 64,
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dashboard,
                        size: 20,
                      ),
                      Text("Dashboard"),
                    ],
                  ),
                ),
                Expanded(
                  child: CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.add),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu,
                        size: 20,
                      ),
                      Text("Menu"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
