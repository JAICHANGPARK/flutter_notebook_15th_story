import 'package:badges/badges.dart';
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
                left: 8,
                right: 0,
                bottom: 0,
                top: 16,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Hello,",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            " Dreamwalker",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 16),
                        child: Row(
                          children: [
                            Text(
                              "4 New",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              " tasks today",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 240,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Container(
                                  width: MediaQuery.of(context).size.width - 100,
                                  decoration: BoxDecoration(
                                      color: Colors.orangeAccent[100], borderRadius: BorderRadius.circular(16)),
                                  child: Center(
                                    child: Text("$index"),
                                  ),
                                ),
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 16),
                        child: Row(
                          children: [
                            Text(
                              "To",
                              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                            ),
                            Text(
                              " Do",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.blue[100],
                              foregroundColor: Colors.black,
                              child: Text("3"),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 130,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 2.5,
                                  decoration: BoxDecoration(
                                      color: Colors.red[100], borderRadius: BorderRadius.circular(16)),
                                  child: Center(
                                    child: Text("$index"),
                                  ),
                                ),
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 16),
                        child: Row(
                          children: [
                            Text(
                              "In",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              " Progress",
                              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.red[100],
                              foregroundColor: Colors.black,
                              child: Text("7"),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                          height: 80,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Card(
                              elevation: 4,
                              child: Row(
                                children: [],
                              ),
                            ),
                          )),
                    ],
                  ),
                )),
            Positioned(
                left: 16,
                right: 16,
                bottom: 8,
                child: Container(
                  height: 64,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), offset: Offset(1, 2))]),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            size: 28,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.orange,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            size: 28,
                            color: Colors.orange[200],
                          ),
                          // SizedBox(height: 4,),
                          // CircleAvatar(
                          //   radius: 3,
                          //   backgroundColor: Colors.orange,
                          // )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check_box_outlined,
                            size: 28,
                            color: Colors.orange[200],
                          ),
                          // SizedBox(height: 4,),
                          // CircleAvatar(
                          //   radius: 3,
                          //   backgroundColor: Colors.orange,
                          // )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Badge(
                            child: Icon(
                              Icons.notifications_outlined,
                              size: 28,
                              color: Colors.orange[200],
                            ),
                          )

                          // SizedBox(height: 4,),
                          // CircleAvatar(
                          //   radius: 3,
                          //   backgroundColor: Colors.orange,
                          // )
                        ],
                      ),
                      CircleAvatar(
                        radius: 16,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
