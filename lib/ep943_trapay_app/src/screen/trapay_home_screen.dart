import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class TrapayHomeScreen extends StatefulWidget {
  const TrapayHomeScreen({Key? key}) : super(key: key);

  @override
  _TrapayHomeScreenState createState() => _TrapayHomeScreenState();
}

class _TrapayHomeScreenState extends State<TrapayHomeScreen> {
  int bottomTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: bottomTabIndex,
        children: [
          SafeArea(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 12, top: 12, bottom: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.yellow,
                          ),
                          padding: EdgeInsets.all(12),
                          child: Icon(Icons.qr_code),
                        ),
                        SizedBox(
                          width: 12,
                        ),
                        Text(
                          "Scan To Pay",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        CircleAvatar()
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: SizedBox(
                      height: 160,
                      child: Container(
                        // color: Colors.blue,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 12),
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2.2,
                                padding: EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8), color: index % 2 == 0 ? Colors.grey[100] : Colors.black),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          index % 2 == 0 ? LineIcons.mastercardCreditCard : LineIcons.visaCreditCard,
                                          size: 32,
                                          color: index % 2 == 0 ? Colors.black : Colors.white,
                                        ),
                                        Text(
                                          "*** *** *123",
                                          style: TextStyle(
                                            color: index % 2 == 0 ? Colors.black : Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      "5360 EGP",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: index % 2 == 0 ? Colors.black : Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      "Credit Card",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: index % 2 == 0 ? Colors.black : Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                          itemCount: 4,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Services",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text("See More"),
                        style: TextButton.styleFrom(primary: Colors.grey),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: SizedBox(
                      height: 64,
                      child: Container(
                        // color: Colors.blue,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
                              child: Container(
                                decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
                                padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 16,
                                      backgroundColor: Colors.blue[100],
                                      foregroundColor: Colors.blueAccent,
                                      child: Icon(
                                        Icons.upload_rounded,
                                        size: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text("Transfar")
                                  ],
                                ),
                              ),
                            );
                          },
                          itemCount: 4,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "History",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.filter_list),
                        color: Colors.grey,
                      )
                    ],
                  ),
                  Text("Last 10 Days"),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Column(
                      children: List.generate(
                          10,
                          (index) => Padding(
                                padding: const EdgeInsets.symmetric(vertical: 7),
                                child: SizedBox(
                                  height: 64,
                                  child: Container(
                                    decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(4)),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 48,
                                          width: 48,
                                          decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4)),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              "Shein Clothos",
                                              style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                            Text("23 Feb 2021")
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              )),
                    ),
                  )
                ],
              ),
            ),
          )),
          Container(
            child: Center(
              child: Text("Services"),
            ),
          ),
          Container(
            child: Center(
              child: Text("Chatting"),
            ),
          ),
          Container(
            child: Center(
              child: Text("groups"),
            ),
          ),
          Container(
            child: Center(
              child: Text("Mores"),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomTabIndex,
        type: BottomNavigationBarType.fixed,
        selectedLabelStyle: TextStyle(fontSize: 10),
        selectedFontSize: 10,
        unselectedLabelStyle: TextStyle(fontSize: 10),
        unselectedFontSize: 10,
        onTap: (idx) {
          setState(() {
            bottomTabIndex = idx;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
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
