import 'package:flutter/material.dart';

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
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text("Services"),
                      TextButton(
                        onPressed: () {},
                        child: Text("See More"),
                        style: TextButton.styleFrom(primary: Colors.grey),
                      ),
                    ],
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
