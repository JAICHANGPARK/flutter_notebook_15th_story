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
          padding: const EdgeInsets.all(8.0),
          child: Column(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
