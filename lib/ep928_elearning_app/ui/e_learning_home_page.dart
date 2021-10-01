import 'package:flutter/material.dart';

class ELearningHomePage extends StatefulWidget {
  const ELearningHomePage({Key? key}) : super(key: key);

  @override
  _ELearningHomePageState createState() => _ELearningHomePageState();
}

class _ELearningHomePageState extends State<ELearningHomePage> {
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
                          decoration: BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          padding: EdgeInsets.all(4),
                          child: Center(child: Icon(Icons.keyboard_arrow_left)),
                        ),
                      ),
                    )),
                    Expanded(
                        child: Center(
                            child: Text(
                      "Course Detail",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ))),
                    Expanded(child: Container()),
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                child: SingleChildScrollView(),
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
                        decoration: BoxDecoration(
                            color: Colors.red[300],
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "13",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Chapters",
                              style: TextStyle(color: Colors.white,
                                  fontSize: 12),
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
                            color: Colors.white,
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "04",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "th",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
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
                            color: Colors.white,
                            border: Border.all(color: Colors.grey[300]!),
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "56",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: "hrs",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
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
