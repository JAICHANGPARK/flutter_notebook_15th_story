import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep901_boxiz_app/model/boxiz.dart';


class BoxizDetailPage extends StatefulWidget {
  final Boxiz? boxiz;
  BoxizDetailPage({Key? key, this.boxiz}) : super(key: key);

  @override
  _BoxizDetailPageState createState() => _BoxizDetailPageState();
}

class _BoxizDetailPageState extends State<BoxizDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
            Positioned(child: Container(
              decoration: BoxDecoration(
                image: 
              ),
            )),

        ],
      ),
    );
  }
}
