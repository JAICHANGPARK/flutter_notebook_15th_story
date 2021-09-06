import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep901_boxiz_app/boxiz_theme.dart';
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
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: MediaQuery.of(context).size.height / 1.5,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        widget.boxiz?.img ?? "",
                      ),
                      fit: BoxFit.cover),
                ),
              )),
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: MediaQuery.of(context).size.height / 1.5,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    BoxizTheme.backgroundColor,
                    BoxizTheme.backgroundColor.withOpacity(0.5),
                    BoxizTheme.backgroundColor.withOpacity(0.25),
                    Colors.transparent
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                ),
              )),
          Positioned(
            left: 0,
            right: 0,
            top: 48,
            bottom: 16,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: BoxizTheme.accentColor,
                      borderRadius: BorderRadius.circular(32)
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    child: Center(child: Text("SUBMIT",)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
