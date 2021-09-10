import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HaibooksHomePage extends StatefulWidget {
  const HaibooksHomePage({Key? key}) : super(key: key);

  @override
  _HaibooksHomePageState createState() => _HaibooksHomePageState();
}

class _HaibooksHomePageState extends State<HaibooksHomePage> {
  ValueNotifier<int> _topTabIndex = ValueNotifier(0);
  ValueNotifier<int> _bottomTabIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey[50],
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: _bottomTabIndex,
            builder: (context, value, child) {
              if (value == 0) {
                return Column(
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
                                child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8),
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
                              ),
                            )),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        _topTabIndex.value = 0;
                                      },
                                      child: ValueListenableBuilder(
                                        valueListenable: _topTabIndex,
                                        builder: (context, value, child) {
                                          return Container(
                                            padding: EdgeInsets.symmetric(horizontal: 20),
                                            decoration: BoxDecoration(
                                                color: value == 0 ? Colors.blueGrey[50] : Colors.transparent,
                                                borderRadius: BorderRadius.circular(16)),
                                            child: Center(
                                              child: Text(
                                                "Last month",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: value == 0 ? Colors.blue : Colors.grey,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        _topTabIndex.value = 1;
                                      },
                                      child: ValueListenableBuilder(
                                        valueListenable: _topTabIndex,
                                        builder: (context, value, child) {
                                          return Container(
                                            padding: EdgeInsets.symmetric(horizontal: 20),
                                            decoration: BoxDecoration(
                                                color: value == 1 ? Colors.blueGrey[50] : Colors.transparent,
                                                borderRadius: BorderRadius.circular(16)),
                                            child: Center(
                                              child: Text(
                                                "6 months",
                                                style: TextStyle(
                                                    color: value == 1 ? Colors.blue : Colors.grey,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        _topTabIndex.value = 2;
                                      },
                                      child: ValueListenableBuilder(
                                        valueListenable: _topTabIndex,
                                        builder: (context, value, child) {
                                          return Container(
                                            padding: EdgeInsets.symmetric(horizontal: 20),
                                            decoration: BoxDecoration(
                                                color: value == 2 ? Colors.blueGrey[50] : Colors.transparent,
                                                borderRadius: BorderRadius.circular(16)),
                                            child: Center(
                                              child: Text(
                                                "Fiscal year",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: value == 2 ? Colors.blue : Colors.grey,
                                                    fontSize: 12),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(flex: 15, child: ValueListenableBuilder<int>(
                      builder: (context, value, child){
                        if(value == 0){
                          return Text("Last month page");
                        }else if(value ==1 ){
                          return Text("6 month page");
                        }else{
                          return Text("Fiscal year page");
                        }
                      },
                        valueListenable: _topTabIndex,
                        child: Placeholder())),
                  ],
                );
              } else {
                return Container(
                    child: Center(
                  child: Text("Menu"),
                ));
              }
            },
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
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
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
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    _topTabIndex.value = 0;
                                  },
                                  child: ValueListenableBuilder(
                                    valueListenable: _topTabIndex,
                                    builder: (context, value, child) {
                                      return Container(
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        decoration: BoxDecoration(
                                            color: value == 0 ? Colors.blueGrey[50] : Colors.transparent,
                                            borderRadius: BorderRadius.circular(16)),
                                        child: Center(
                                          child: Text(
                                            "Last month",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: value == 0 ? Colors.blue : Colors.grey,
                                                fontSize: 12),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    _topTabIndex.value = 1;
                                  },
                                  child: ValueListenableBuilder(
                                    valueListenable: _topTabIndex,
                                    builder: (context, value, child) {
                                      return Container(
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        decoration: BoxDecoration(
                                            color: value == 1 ? Colors.blueGrey[50] : Colors.transparent,
                                            borderRadius: BorderRadius.circular(16)),
                                        child: Center(
                                          child: Text(
                                            "6 months",
                                            style: TextStyle(
                                                color: value == 1 ? Colors.blue : Colors.grey,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    _topTabIndex.value = 2;
                                  },
                                  child: ValueListenableBuilder(
                                    valueListenable: _topTabIndex,
                                    builder: (context, value, child) {
                                      return Container(
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        decoration: BoxDecoration(
                                            color: value == 2 ? Colors.blueGrey[50] : Colors.transparent,
                                            borderRadius: BorderRadius.circular(16)),
                                        child: Center(
                                          child: Text(
                                            "Fiscal year",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: value == 2 ? Colors.blue : Colors.grey,
                                                fontSize: 12),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                  child: GestureDetector(
                    onTap: () {
                      _bottomTabIndex.value = 0;
                    },
                    child: ValueListenableBuilder<int>(
                      valueListenable: _bottomTabIndex,
                      builder: (context, value, child) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.dashboard,
                              size: 20,
                              color: value == 0 ? Colors.blue : Colors.blueGrey,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Dashboard",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dashboard,
                            size: 20,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Dashboard"),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: CircleAvatar(
                    radius: 20,
                    child: Icon(Icons.add),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _bottomTabIndex.value = 1;
                    },
                    child: ValueListenableBuilder<int>(
                      valueListenable: _bottomTabIndex,
                      builder: (context, value, child) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.menu,
                              size: 20,
                              color: value == 1 ? Colors.blue : Colors.blueGrey,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Menu",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                            ),
                          ],
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.menu,
                            size: 20,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text("Menu"),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
