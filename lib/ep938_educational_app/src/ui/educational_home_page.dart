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
        child: Column(
          children: [
            Expanded(child: Placeholder()),
            Expanded(child: Placeholder())
          ],
        ),
      ),
    );
  }
}
