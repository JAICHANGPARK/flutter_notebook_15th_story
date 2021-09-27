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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Text("Today"), Text("Wed, 18 Aug")],
                          ),
                          Container(
                            child: IconButton(
                              icon: Icon(Icons.calendar_today_outlined),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Container(
                          height: 200,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent[200], borderRadius: BorderRadius.circular(24)),
                          child: Row(
                            children: [
                              Expanded(flex: 5, child: Placeholder()),
                              Expanded(flex: 4, child: Placeholder()),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          height: 140,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Intaked",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                          ),
                                          Text(
                                            "🍕",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 48,
                                            width: 8,
                                            decoration: BoxDecoration(
                                              color: Colors.teal[100],
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(8), color: Colors.teal),
                                                  ),
                                                  top: 24,
                                                  left: 0,
                                                  right: 0,
                                                  bottom: 0,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 24,
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "589",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text("kcal"),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  padding: EdgeInsets.all(16),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Borned",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                          ),
                                          Text(
                                            "🔥",
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 48,
                                            width: 8,
                                            decoration: BoxDecoration(
                                              color: Colors.deepOrange[100],
                                              borderRadius: BorderRadius.circular(8),
                                            ),
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(8),
                                                        color: Colors.deepOrange),
                                                  ),
                                                  top: 24,
                                                  left: 0,
                                                  right: 0,
                                                  bottom: 0,
                                                )
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width: 24,
                                          ),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "738",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text("kcal"),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
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
                        children: [Icon(Icons.home, size: 28), SizedBox(height: 4), CircleAvatar(radius: 4)],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search, size: 28),
                          SizedBox(height: 4),
                          // CircleAvatar(radius: 4,)
                        ],
                      ),
                      Container(
                        child: IconButton(
                          icon: Icon(Icons.qr_code_scanner),
                          onPressed: () {},
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.bar_chart, size: 28),
                          SizedBox(height: 4),
                          // CircleAvatar(radius: 4,)
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person, size: 28),
                          SizedBox(height: 4),
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
