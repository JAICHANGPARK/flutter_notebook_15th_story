import 'package:flutter/material.dart';

class EducationalHomePage extends StatefulWidget {
  const EducationalHomePage({Key? key}) : super(key: key);

  @override
  _EducationalHomePageState createState() => _EducationalHomePageState();
}

class _EducationalHomePageState extends State<EducationalHomePage> with TickerProviderStateMixin {
  ValueNotifier<int> _pageIndex = ValueNotifier(0);

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
                  child: ValueListenableBuilder<int>(
                    valueListenable: _pageIndex,
                    builder: (context, value, child) {
                      return IndexedStack(
                        children: [
                          Stack(
                            children: [
                              Positioned(
                                child: Container(),
                                left: 0,
                                right: 0,
                                top: 0,
                                bottom: 0,
                              ),
                              Positioned(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 8),
                                        child: Row(
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
                                            CircleAvatar(
                                              radius: 16,
                                            )
                                          ],
                                        ),
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
                          ),
                          Container(
                            child: Center(
                              child: Text("Chat"),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text("Notification"),
                            ),
                          ),
                          Container(
                            child: Center(
                              child: Text("Bookmark"),
                            ),
                          )
                        ],
                      );
                    },
                  )),
              SizedBox(
                height: 64,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _pageIndex.value = 0;
                        },
                        child: ValueListenableBuilder<int>(
                          valueListenable: _pageIndex,
                          builder: (context, value, child) {
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 2,
                                  width: 20,
                                  decoration: BoxDecoration(color: value == 0 ? Colors.pink : Colors.transparent),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Icon(
                                    Icons.home_outlined,
                                    color: value == 0 ? Colors.pink : Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(color: value == 0 ? Colors.pink : Colors.transparent, fontSize: 12),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 2,
                            width: 20,
                            decoration: BoxDecoration(color: Colors.pink),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Icon(Icons.chat_outlined, color: Colors.pink),
                          ),
                          Text(
                            "Chat",
                            style: TextStyle(color: Colors.pink, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 2,
                            width: 20,
                            decoration: BoxDecoration(color: Colors.pink),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Icon(Icons.notifications_outlined, color: Colors.pink),
                          ),
                          Text(
                            "Notification",
                            style: TextStyle(color: Colors.pink, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 2,
                            width: 20,
                            decoration: BoxDecoration(color: Colors.pink),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Icon(Icons.bookmark_outline, color: Colors.pink),
                          ),
                          Text(
                            "Bookmark",
                            style: TextStyle(color: Colors.pink, fontSize: 12),
                          )
                        ],
                      ),
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
