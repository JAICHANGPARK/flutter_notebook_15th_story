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
                                          padding: EdgeInsets.all(16),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                height: 84,
                                                width: 120,
                                              ),
                                              Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'What you want to\nlearn today?',
                                                    style: TextStyle(fontSize: 24),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 16),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: Colors.deepPurpleAccent, borderRadius: BorderRadius.circular(8)),
                                                      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                                                      child: Center(
                                                        child: Text(
                                                          "Start lesson",
                                                          style: TextStyle(color: Colors.white, fontSize: 16),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
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
                                                  child: ValueListenableBuilder(
                                                    builder: (BuildContext context, value, Widget? child) {
                                                      return Container(
                                                        padding: EdgeInsets.symmetric(horizontal: 12),
                                                        decoration: BoxDecoration(
                                                          color: value == 1 ? Colors.pink : Colors.white,
                                                          borderRadius: BorderRadius.circular(8),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            "UX/UI Design",
                                                            style: TextStyle(
                                                              color: value == 1 ? Colors.white : Colors.black,
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    valueListenable: _subTabIndex,
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
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  _subTabIndex.value = 2;
                                                },
                                                child: Padding(
                                                  padding: const EdgeInsets.only(right: 8),
                                                  child: ValueListenableBuilder(
                                                    valueListenable: _subTabIndex,
                                                    builder: (BuildContext context, value, Widget? child) {
                                                      return Container(
                                                        padding: EdgeInsets.symmetric(horizontal: 12),
                                                        decoration: BoxDecoration(
                                                          color: value == 2 ? Colors.pink : Colors.white,
                                                          borderRadius: BorderRadius.circular(8),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            "Web Development",
                                                            style: TextStyle(
                                                              color: value == 2 ? Colors.white : Colors.black,
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  _subTabIndex.value = 3;
                                                },
                                                child: Padding(
                                                  padding: const EdgeInsets.only(right: 8),
                                                  child: ValueListenableBuilder(
                                                    valueListenable: _subTabIndex,
                                                    builder: (BuildContext context, value, Widget? child) {
                                                      return Container(
                                                        padding: EdgeInsets.symmetric(horizontal: 12),
                                                        decoration: BoxDecoration(
                                                          color: value == 3 ? Colors.pink : Colors.white,
                                                          borderRadius: BorderRadius.circular(8),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            "Flutter Development",
                                                            style: TextStyle(
                                                              color: value == 3 ? Colors.white : Colors.black,
                                                              fontSize: 12,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
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
                                                    height: 220,
                                                    child: ListView(
                                                      scrollDirection: Axis.horizontal,
                                                      children: [
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width / 1.3,
                                                          child: Card(
                                                            child: Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Column(
                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  SizedBox(
                                                                    height: 100,
                                                                    width: double.infinity,
                                                                    child: Image.network(
                                                                      "https://cdn.pixabay.com/photo/2021/01/29/08/09/doodles-5960094_960_720.jpg",
                                                                      fit: BoxFit.fill,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 8,
                                                                  ),
                                                                  Text(
                                                                    "Best Web Development Course",
                                                                    style: TextStyle(fontSize: 12),
                                                                  ),
                                                                  Text(
                                                                    "for Beginners",
                                                                    style: TextStyle(fontSize: 12),
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Icon(
                                                                        Icons.access_time,
                                                                        size: 12,
                                                                      ),
                                                                      Text(
                                                                        "2 hr 10 mins",
                                                                        style: TextStyle(fontSize: 12),
                                                                      ),
                                                                      Spacer(),
                                                                      IconButton(
                                                                        onPressed: () {},
                                                                        icon: Icon(
                                                                          Icons.bookmark_border,
                                                                        ),
                                                                        color: Colors.pink,
                                                                      )
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(context).size.width / 1.3,
                                                          child: Card(
                                                            child: Padding(
                                                              padding: const EdgeInsets.all(8.0),
                                                              child: Column(
                                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  SizedBox(
                                                                    height: 100,
                                                                    child: Center(
                                                                      child: Image.network(
                                                                        "https://cdn.pixabay.com/photo/2021/01/29/08/09/doodles-5960094_960_720.jpg",
                                                                        fit: BoxFit.cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 8,
                                                                  ),
                                                                  Text(
                                                                    "Best Web Development Course",
                                                                    style: TextStyle(fontSize: 12),
                                                                  ),
                                                                  Text(
                                                                    "for Beginners",
                                                                    style: TextStyle(fontSize: 12),
                                                                  ),
                                                                  Row(
                                                                    children: [
                                                                      Icon(
                                                                        Icons.access_time,
                                                                        size: 12,
                                                                      ),
                                                                      Text(
                                                                        "2 hr 10 mins",
                                                                        style: TextStyle(fontSize: 12),
                                                                      ),
                                                                      Spacer(),
                                                                      IconButton(
                                                                        onPressed: () {},
                                                                        icon: Icon(
                                                                          Icons.bookmark_border,
                                                                        ),
                                                                        color: Colors.pink,
                                                                      )
                                                                    ],
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    )),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                                                child: SizedBox(
                                                  height: 220,
                                                  child: Container(
                                                    color: Colors.red,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Top Mentors for you",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            Text(
                                              "View all",
                                              style: TextStyle(fontSize: 12, color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: ListView(
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context).size.width / 1.5,
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(16),
                                                      topRight: Radius.circular(16),
                                                      bottomRight: Radius.circular(4),
                                                      bottomLeft: Radius.circular(4),
                                                    )),
                                              )
                                            ],
                                          ),
                                        ),
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
