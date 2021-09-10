import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HaibooksHomePage extends StatefulWidget {
  const HaibooksHomePage({Key? key}) : super(key: key);

  @override
  _HaibooksHomePageState createState() => _HaibooksHomePageState();
}

class _HaibooksHomePageState extends State<HaibooksHomePage> {
  ValueNotifier<int> _topTabIndex = ValueNotifier(0);

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
                          Expanded(
                              child: Center(
                            child: Text(
                              "Haibooks Organization",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          )),
                          Badge(
                            child: Icon(Icons.charging_station),
                          ),
                        ],
                      )),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              _topTabIndex.value = 0;
                            },
                            child: ValueListenableBuilder(
                              valueListenable: _topTabIndex,
                              builder: (context, value, child) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: value == 0?Colors.transparent : Colors.blueGrey[50],
                                    borderRadius: BorderRadius.circular(16)
                                  ),
                                  child: Center(
                                    child: Text("Last month"),
                                  ),
                                );
                              },
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text("6 months"),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text("Fiscal year"),
                            ),
                          )
                        ],
                      )),
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
