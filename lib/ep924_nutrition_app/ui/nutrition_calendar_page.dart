import 'package:flutter/material.dart';


class NutritionCalendarPage extends StatefulWidget {
  const NutritionCalendarPage({Key? key}) : super(key: key);

  @override
  _NutritionCalendarPageState createState() => _NutritionCalendarPageState();
}

class _NutritionCalendarPageState extends State<NutritionCalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.deepPurple[50],
                borderRadius: BorderRadius.circular(8)),
            child: IconButton(
              icon: Icon(Icons.calendar_today_outlined),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        NutritionCalendarPage()));
              },
              color: purpleColor,
            ),
          )
        ],
      ),
    );
  }
}
