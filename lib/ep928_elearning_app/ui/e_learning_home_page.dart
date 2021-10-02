import 'dart:async';

import 'package:flutter/material.dart';

class CourseLeftTime {
  int? hour;
  int? minute;
  int? second;

  CourseLeftTime(this.hour, this.minute, this.second);
}

class ELearningHomePage extends StatefulWidget {
  const ELearningHomePage({Key? key}) : super(key: key);

  @override
  _ELearningHomePageState createState() => _ELearningHomePageState();
}

class _ELearningHomePageState extends State<ELearningHomePage> {
  Timer? courseTimer;
  int leftTime = 3624;
  int hour = 0;
  int minute = 0;
  int second = 0;
  ValueNotifier<CourseLeftTime> courseLeftTime = ValueNotifier(CourseLeftTime(0, 0, 0));

  /// 1 second =  1
  /// 1 minute = 60 s
  /// 60 minutes = 1hours = 60 * 60 s = 3600
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    courseTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      minute = leftTime ~/ 60;
      hour = minute ~/ 60;
      print("1: minute : $minute, hour: $hour");
      second = leftTime % 60;
      minute = minute % 60;
      print("2: hour: $hour, minute : $minute, second: $second");
      courseLeftTime.value = CourseLeftTime(hour, minute, second);
      leftTime--;
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    courseTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Align(
                      alignment: Alignment.centerLeft,
                      child: PhysicalModel(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.2),
                        elevation: 1,
                        child: Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                          padding: EdgeInsets.all(4),
                          child: Center(child: Icon(Icons.keyboard_arrow_left)),
                        ),
                      ),
                    )),
                    Expanded(
                        child: Center(
                            child: Text(
                      "Course Detail",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ))),
                    Expanded(child: Container()),
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(0, 1))]),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 240,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                        image: NetworkImage("https://cdn.pixabay.com/photo/2017/07/31/11/21/people-2557396_960_720.jpg"),
                                        fit: BoxFit.cover)),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      right: 0,
                                      bottom: 16,
                                      child: ValueListenableBuilder<CourseLeftTime>(
                                        valueListenable: courseLeftTime,
                                        builder: (context, value, child) {
                                          return Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              CircleAvatar(
                                                radius: 15,
                                                backgroundColor: Colors.white,
                                                foregroundColor: Colors.black,
                                                child: Text(value.hour! < 10 ? "0${value.hour}" : "${value.hour}"),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                                child: Text(
                                                  ":",
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ),
                                              CircleAvatar(
                                                radius: 15,
                                                backgroundColor: Colors.white,
                                                foregroundColor: Colors.black,
                                                child: Text("${value.minute}"),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                                child: Text(
                                                  ":",
                                                  style: TextStyle(color: Colors.white),
                                                ),
                                              ),
                                              CircleAvatar(
                                                radius: 15,
                                                backgroundColor: Colors.white,
                                                foregroundColor: Colors.black,
                                                child: Text(
                                                  "${value.second}",
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            CircleAvatar(
                                              radius: 15,
                                              backgroundColor: Colors.white,
                                              foregroundColor: Colors.black,
                                              child: Text("08"),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                ":",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ),
                                            CircleAvatar(
                                              radius: 15,
                                              backgroundColor: Colors.white,
                                              foregroundColor: Colors.black,
                                              child: Text("32"),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                ":",
                                                style: TextStyle(color: Colors.white),
                                              ),
                                            ),
                                            CircleAvatar(
                                              radius: 15,
                                              backgroundColor: Colors.white,
                                              foregroundColor: Colors.black,
                                              child: Text(
                                                "10",
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(color: Colors.orange[50], borderRadius: BorderRadius.circular(4)),
                                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          "4.0",
                                          style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.orangeAccent,
                                          size: 14,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Science and Technology",
                                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 16,
                                  ),
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 16,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "Currently Bid",
                                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "5.4 ETH",
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                      )
                                    ],
                                  ),
                                  Divider(
                                    height: 24,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 48,
                                        width: 48,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                                child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  shape: BoxShape.circle,
                                                  border: Border.all(color: Colors.red),
                                                  image: DecorationImage(
                                                      image: NetworkImage(
                                                        "https://cdn.pixabay.com/photo/2021/03/05/21/43/lizard-6072391_960_720.jpg",
                                                      ),
                                                      fit: BoxFit.cover)),
                                            )),
                                            Positioned(
                                                right: 0,
                                                top: 0,
                                                child: CircleAvatar(
                                                  radius: 8,
                                                  child: Icon(
                                                    Icons.done,
                                                    size: 12,
                                                  ),
                                                  foregroundColor: Colors.white,
                                                  backgroundColor: Colors.green,
                                                )),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Course Instructor",
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey,
                                              ),
                                            ),
                                            Text(
                                              "Dr, Hasan Rahman",
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: Text("About Course"),
                            ),
                            Text(
                                "Lorem ipsum dolor sit amet, consectetur adipisicing elit,"
                                    " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                    " Ut enim ad minim veniam, quis nostrud exercitation"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                flex: 12,
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(color: Colors.red[300], borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "13",
                              style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Chapters",
                              style: TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white, border: Border.all(color: Colors.grey[300]!), borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "04",
                                style: TextStyle(fontSize: 24, color: Colors.red, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "th",
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ])),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Semester",
                              style: TextStyle(color: Colors.black, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white, border: Border.all(color: Colors.grey[300]!), borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "56",
                                style: TextStyle(fontSize: 24, color: Colors.red, fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "hrs",
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ])),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Duration",
                              style: TextStyle(color: Colors.black, fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    )),
                  ],
                ),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
