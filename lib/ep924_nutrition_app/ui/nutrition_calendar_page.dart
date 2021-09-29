import 'package:flutter/material.dart';

import '../nutrition_app.dart';

class NutritionCalendarPage extends StatefulWidget {
  const NutritionCalendarPage({Key? key}) : super(key: key);

  @override
  _NutritionCalendarPageState createState() => _NutritionCalendarPageState();
}

class _NutritionCalendarPageState extends State<NutritionCalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple[50],
                    borderRadius: BorderRadius.circular(8)),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  color: purpleColor,
                ),
              ),
              SizedBox(height: 16,),
              Text(
                "Today",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              Text(
                "Web, 18 Aug",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 16,),
            ],
          ),
        ),
      ),
    );
  }
}
