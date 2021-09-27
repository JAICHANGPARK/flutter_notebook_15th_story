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
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent[200], borderRadius: BorderRadius.circular(24)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Container(
                          height: 160,
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

                                          )],
                                      )
                                    ],
                                  ),
                                ),
                              )),
                              Expanded(
                                  child: Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(16),
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
