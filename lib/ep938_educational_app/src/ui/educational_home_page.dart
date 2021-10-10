import 'package:flutter/material.dart';


class EducationalHomePage extends StatefulWidget {
  const EducationalHomePage({Key? key}) : super(key: key);

  @override
  _EducationalHomePageState createState() => _EducationalHomePageState();
}

class _EducationalHomePageState extends State<EducationalHomePage>
with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            children: [
              Expanded(
                  flex:20,child: Placeholder()),
              SizedBox(
                  height: 64,
              child: Row(
                children: [
                  Column(
                    children: [

                    ],
                  )
                ],
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
