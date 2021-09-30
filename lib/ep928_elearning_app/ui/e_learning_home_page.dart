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
                            color: Colors.red[200],
                            borderRadius: BorderRadius.circular(16)),
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
