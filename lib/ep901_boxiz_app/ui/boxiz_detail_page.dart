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
  List<BoxizSelect> _selectItem = [
    BoxizSelect(isOpen: false),
    BoxizSelect(isOpen: false),
    BoxizSelect(isOpen: false),
    BoxizSelect(isOpen: false),
    BoxizSelect(isOpen: false),
  ];

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
            top: 64,
            bottom: 16,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, color: Colors.white, icon: Icon(Icons.arrow_back_ios)),
                    Text(
                      widget.boxiz?.title ?? "",
                      style: TextStyle(color: Colors.white),
                    ),
                    IconButton(onPressed: () {}, color: Colors.white, icon: Icon(Icons.info_outline)),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "${widget.boxiz?.liveIn?.inHours ?? "0h"}h "
                      "${widget.boxiz?.liveIn?.inMinutes ?? "0m"}m "
                      "${widget.boxiz?.liveIn?.inSeconds ?? "0s"}s",
                      style: TextStyle(
                        color: BoxizTheme.accentColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Starts at ${widget.boxiz?.datetime}",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
                SizedBox(
                    height: 42,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: _selectItem.length,
                        itemBuilder: (context, index) {
                          var item = _selectItem[index];
                          if (item.isOpen) {
                            return Container(
                              decoration: BoxDecoration(
                                color: Colors.deepOrangeAccent,
                              ),
                              child: Center(
                                child: Text(item.number.toString()),
                              ),
                            );
                          }
                          return Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: BoxizTheme.backgroundColor,
                                  borderRadius: BorderRadius.circular(3),
                                  border: Border.all(color: BoxizTheme.accentColor)),
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Center(
                                  child: Icon(
                                Icons.lock,
                                color: BoxizTheme.accentColor,
                              )),
                            ),
                          );
                        })),
                Expanded(child: Placeholder()),
                SizedBox(
                  height: 32,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(color: BoxizTheme.accentColor, borderRadius: BorderRadius.circular(32)),
                    padding: EdgeInsets.symmetric(
                      vertical: 12,
                    ),
                    child: Center(
                        child: Text(
                      "SUBMIT",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
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
