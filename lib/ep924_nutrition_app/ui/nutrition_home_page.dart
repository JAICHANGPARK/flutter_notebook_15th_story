import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class NutritionHomePage extends StatefulWidget {
  const NutritionHomePage({Key? key}) : super(key: key);

  @override
  _NutritionHomePageState createState() => _NutritionHomePageState();
}

class _NutritionHomePageState extends State<NutritionHomePage> {
  /// 101 95 177 65 5f b1
  /// 110 105 182  6e 69 b6

  Color purpleColor = Color(0xff655fb1);
  Color purpleLightColor = Color(0xff6e69b6);

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
                            children: [
                              Text(
                                "Today",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "Wed, 18 Aug",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              )
                            ],
                          ),
                          Container(
                            decoration:
                                BoxDecoration(color: Colors.deepPurple[50], borderRadius: BorderRadius.circular(8)),
                            child: IconButton(
                              icon: Icon(Icons.calendar_today_outlined),
                              onPressed: () {},
                              color: purpleColor,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Container(
                          height: 200,
                          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                          decoration: BoxDecoration(color: purpleColor, borderRadius: BorderRadius.circular(24)),
                          child: Row(
                            children: [
                              Expanded(
                                  flex: 5,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        right: 0,
                                        bottom: 0,
                                        top: 0,
                                        child: CircularPercentIndicator(
                                          radius: 170,
                                          lineWidth: 6.0,
                                          animation: true,
                                          percent: 0.7,
                                          circularStrokeCap: CircularStrokeCap.round,
                                          progressColor: Colors.white,
                                          backgroundColor: Colors.white.withOpacity(0.2),
                                          center: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Container(
                                              height: double.infinity,
                                              width: double.infinity,
                                              decoration:
                                                  BoxDecoration(color: purpleLightColor, shape: BoxShape.circle),
                                              padding: EdgeInsets.all(8),
                                              child: Container(
                                                decoration: BoxDecoration(shape: BoxShape.circle, color: purpleColor),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Remaining",
                                                      style: TextStyle(color: Colors.white),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.all(8.0),
                                                      child: Text(
                                                        "1,112",
                                                        style: TextStyle(fontSize: 23, color: Colors.white),
                                                      ),
                                                    ),
                                                    Text(
                                                      "kcal",
                                                      style: TextStyle(color: Colors.white),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                              SizedBox(
                                width: 24,
                              ),
                              Expanded(
                                  flex: 4,
                                  child: Column(
                                    children: [
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Carbs",
                                            style: TextStyle(
                                                fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 4),
                                            child: LinearPercentIndicator(
                                              padding: EdgeInsets.zero,
                                              backgroundColor: Colors.white.withOpacity(0.2),
                                              progressColor: Colors.white,
                                              percent: 200 / 323,
                                            ),
                                          ),
                                          Text(
                                            "200 / 323g",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      )),
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Proteins",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 4),
                                            child: LinearPercentIndicator(
                                              padding: EdgeInsets.zero,
                                              backgroundColor: Colors.white.withOpacity(0.2),
                                              progressColor: Colors.white,
                                              percent: 100 / 129,
                                            ),
                                          ),
                                          Text(
                                            "100 / 129g",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      )),
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Fats",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(vertical: 4),
                                            child: LinearPercentIndicator(
                                              padding: EdgeInsets.zero,
                                              backgroundColor: Colors.white.withOpacity(0.2),
                                              progressColor: Colors.white,
                                              percent: 24 / 85,
                                            ),
                                          ),
                                          Text(
                                            "14 / 85g",
                                            style: TextStyle(
                                                fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white),
                                          ),
                                        ],
                                      )),
                                    ],
                                  )),
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
                        child: Row(
                          children: [
                            Column(
                              children: [
                                CircularPercentIndicator(
                                  radius: 32,
                                  percent: 0.6,
                                  lineWidth: 4,
                                  progressColor: Colors.teal,
                                  backgroundColor: Colors.teal[100]!,
                                ),
                                IntrinsicHeight(
                                  child: VerticalDivider(
                                    color: Colors.grey,
                                    width: 1.5,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Breakfast",
                                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                                      ),
                                      Text(
                                        "407 kcal",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        height: 48,
                                        width: 48,
                                        decoration: BoxDecoration(color: Colors.blue[50]),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [Text("Espresso coffee"), Text("30 ml")],
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
                        children: [
                          Icon(
                            Icons.home,
                            size: 28,
                            color: purpleColor,
                          ),
                          SizedBox(height: 4),
                          CircleAvatar(
                            radius: 4,
                            backgroundColor: purpleColor,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            size: 28,
                            color: purpleColor,
                          ),
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
                          color: purpleColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.bar_chart,
                            size: 28,
                            color: purpleColor,
                          ),
                          SizedBox(height: 4),
                          // CircleAvatar(radius: 4,)
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.person,
                            size: 28,
                            color: purpleColor,
                          ),
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
