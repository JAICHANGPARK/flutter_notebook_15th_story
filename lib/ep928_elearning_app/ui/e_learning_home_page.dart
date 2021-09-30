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
                    Expanded(child: Align(
                      alignment: Alignment.centerLeft,
                      child: PhysicalModel(
                        color: Colors.black.withOpacity(0.2),
                        elevation: 2,
                        child: Container(
                          height: 38,
                          width: 38,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                          ),
                          padding: EdgeInsets.all(4),
                          child: Center(child: Icon(Icons.arrow_back_ios)),
                        ),
                      ),
                    )),
                    Expanded(child: Center(child: Text("Course Detail"))),
                    Expanded(child: Placeholder()),
                  ],
                ),
                flex: 1,
              ),
              Expanded(
                child: SingleChildScrollView(),
                flex: 10,
              ),
              Expanded(
                child: Placeholder(),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
