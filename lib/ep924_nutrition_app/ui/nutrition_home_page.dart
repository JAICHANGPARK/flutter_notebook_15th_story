import 'package:flutter/material.dart';

class NutritionHomePage extends StatefulWidget {
  const NutritionHomePage({Key? key}) : super(key: key);

  @override
  _NutritionHomePageState createState() => _NutritionHomePageState();
}

class _NutritionHomePageState extends State<NutritionHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: Placeholder(),
                flex: 15,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            size: 28,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          CircleAvatar(
                            radius: 4,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            size: 28,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          // CircleAvatar(radius: 4,)
                        ],
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.qr_code_scanner),
                          onPressed: () {},
                        ),
                        decoration:
                            BoxDecoration(color: Colors.deepPurpleAccent[100], borderRadius: BorderRadius.circular(8)),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.bar_chart,
                            size: 28,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          // CircleAvatar(radius: 4,)
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            size: 28,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          // CircleAvatar(radius: 4,)
                        ],
                      ),
                    ],
                  ),
                ),
                flex: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
