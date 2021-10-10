import 'package:flutter/material.dart';

class EducationalHomePage extends StatefulWidget {
  const EducationalHomePage({Key? key}) : super(key: key);

  @override
  _EducationalHomePageState createState() => _EducationalHomePageState();
}

class _EducationalHomePageState extends State<EducationalHomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              Expanded(
                  flex: 20,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Placeholder(),
                        left: 0,
                        right: 0,
                        top: 0,
                        bottom: 0,
                      ),
                      Positioned(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.menu),
                                  ),
                                  Spacer(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.search),
                                  ),
                                  CircleAvatar(radius: 16,)
                                ],
                              ),

                            ],
                          ),
                        ),
                        left: 0,
                        right: 0,
                        top: 0,
                        bottom: 0,
                      )
                    ],
                  )),
              SizedBox(
                height: 64,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 3,
                          width: 20,
                          decoration: BoxDecoration(color: Colors.pink),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Icon(Icons.home_outlined, color: Colors.pink),
                        ),
                        Text(
                          "Home",
                          style: TextStyle(color: Colors.pink, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 3,
                          width: 20,
                          decoration: BoxDecoration(color: Colors.pink),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Icon(Icons.home_outlined, color: Colors.pink),
                        ),
                        Text(
                          "Chat",
                          style: TextStyle(color: Colors.pink, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 3,
                          width: 20,
                          decoration: BoxDecoration(color: Colors.pink),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Icon(Icons.home_outlined, color: Colors.pink),
                        ),
                        Text(
                          "Notification",
                          style: TextStyle(color: Colors.pink, fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 3,
                          width: 20,
                          decoration: BoxDecoration(color: Colors.pink),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Icon(Icons.home_outlined, color: Colors.pink),
                        ),
                        Text(
                          "Bookmark",
                          style: TextStyle(color: Colors.pink, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
