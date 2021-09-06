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
            Positioned(
                left: 0,
                right: 0,
                top: 0,
                bottom: MediaQuery.of(context).size.height / 2,
                child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    widget.boxiz?.img ?? "",
                  )
                )
              ),
            )),

        ],
      ),
    );
  }
}
