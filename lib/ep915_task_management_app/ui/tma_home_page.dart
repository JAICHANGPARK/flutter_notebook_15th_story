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
                            color: Colors.orange,
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
                            color: Colors.orange,
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
                              color: Colors.orange,
                            ),
                          )

                          // SizedBox(height: 4,),
                          // CircleAvatar(
                          //   radius: 3,
                          //   backgroundColor: Colors.orange,
                          // )
                        ],
                      ),
                      CircleAvatar(),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
