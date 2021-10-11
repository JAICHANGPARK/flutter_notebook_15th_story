import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EducationalHomePage extends StatefulWidget {
  const EducationalHomePage({Key? key}) : super(key: key);

  @override
  _EducationalHomePageState createState() => _EducationalHomePageState();
}

class _EducationalHomePageState extends State<EducationalHomePage> with TickerProviderStateMixin {
  ValueNotifier<int> _pageIndex = ValueNotifier(0);
  ValueNotifier<int> _subTabIndex = ValueNotifier(0);

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
                        index: value,
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
                                left: 0,
                                right: 0,
                                top: 0,
                                bottom: 0,
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
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          height: 160,
                                          decoration: BoxDecoration(
                                            color: Colors.pink,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(16),
                                              topRight: Radius.circular(16),
                                              bottomLeft: Radius.circular(4),
                                              bottomRight: Radius.circular(4),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                                        child: SizedBox(
                                          height: 42,
                                          child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  _subTabIndex.value = 0;
                                                },
                                                child: Padding(
                                                  padding: const EdgeInsets.only(right: 8),
                                                  child: ValueListenableBuilder(
                                                    valueListenable: _subTabIndex,
                                                    builder: (BuildContext context, int value, Widget? child) {
                                                      return Container(
                                                        padding: EdgeInsets.symmetric(horizontal: 12),
                                                        decoration: BoxDecoration(
                                                            color: value == 0 ? Colors.pink : Colors.white,
                                                            borderRadius: BorderRadius.circular(8)),
                                                        child: Center(
                                                          child: Text(
                                                            "All topic",
                                                            style: TextStyle(
                                                              color: value == 0 ? Colors.white : Colors.black,
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 12),
                                                      decoration: BoxDecoration(
                                                        color: Colors.pink,
                                                        borderRadius: BorderRadius.circular(8),
                                                      ),
                                                      child: Center(
                                                        child: Text(
                                                          "All topic",
                                                          style: TextStyle(color: Colors.white, fontSize: 12),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  _subTabIndex.value = 1;
                                                },
                                                child: Padding(
                                                  padding: const EdgeInsets.only(right: 8),
                                                  child: Container(
                                                    padding: EdgeInsets.symmetric(horizontal: 12),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "UX/UI Design",
                                                        style: TextStyle(color: Colors.black, fontSize: 12),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  _subTabIndex.value = 2;
                                                },
                                                child: Padding(
                                                  padding: const EdgeInsets.only(right: 8),
                                                  child: Container(
                                                    padding: EdgeInsets.symmetric(horizontal: 12),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "Web Development",
                                                        style: TextStyle(color: Colors.black, fontSize: 12),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  _subTabIndex.value = 3;
                                                },
                                                child: Padding(
                                                  padding: const EdgeInsets.only(right: 8),
                                                  child: Container(
                                                    padding: EdgeInsets.symmetric(horizontal: 12),
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius: BorderRadius.circular(8),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "Flutter Development",
                                                        style: TextStyle(color: Colors.black, fontSize: 12),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      ValueListenableBuilder(
                                        valueListenable: _subTabIndex,
                                        builder: (BuildContext context, int value, Widget? child) {
                                          return IndexedStack(
                                            index: value,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                                                child: SizedBox(
                                                  height: 240,
                                                  child: Container(
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                                                child: SizedBox(
                                                  height: 240,
                                                  child: Container(
                                                    color: Colors.red,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      )
                                    ],
                                  ),
                                ),
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
                                  style: TextStyle(
                                    color: value == 0 ? Colors.pink : Colors.transparent,
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _pageIndex.value = 1;
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
                                  decoration: BoxDecoration(color: value == 1 ? Colors.pink : Colors.transparent),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Icon(
                                    Icons.chat_outlined,
                                    color: value == 1 ? Colors.pink : Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Message",
                                  style: TextStyle(
                                    color: value == 1 ? Colors.pink : Colors.transparent,
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _pageIndex.value = 2;
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
                                  decoration: BoxDecoration(color: value == 2 ? Colors.pink : Colors.transparent),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Icon(
                                    Icons.notifications_outlined,
                                    color: value == 2 ? Colors.pink : Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Notifications",
                                  style: TextStyle(
                                    color: value == 2 ? Colors.pink : Colors.transparent,
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _pageIndex.value = 3;
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
                                  decoration: BoxDecoration(color: value == 3 ? Colors.pink : Colors.transparent),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 4),
                                  child: Icon(
                                    Icons.bookmark_border,
                                    color: value == 3 ? Colors.pink : Colors.grey,
                                  ),
                                ),
                                Text(
                                  "Bookmarks",
                                  style: TextStyle(
                                    color: value == 3 ? Colors.pink : Colors.transparent,
                                    fontSize: 10,
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ),
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
