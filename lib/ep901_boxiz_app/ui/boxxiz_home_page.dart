import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep901_boxiz_app/model/boxiz.dart';

class BoxizHomePage extends StatefulWidget {
  const BoxizHomePage({Key? key}) : super(key: key);

  @override
  _BoxizHomePageState createState() => _BoxizHomePageState();
}

class _BoxizHomePageState extends State<BoxizHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 16,
                    ),
                    Icon(Icons.comment_bank_outlined),
                    Text("128"),
                    Icon(Icons.vpn_key),
                    Text("0"),
                    Icon(Icons.shield),
                    Text("3"),
                    Badge(
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              flex: 2,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: boxizItems.length,
                itemBuilder: (context, index){
                  Boxiz _boxiz = boxizItems[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      height: 380,
                      child: Column(
                        children: [
                          Expanded(child: Container(
                            decoration: BoxDecoration(color: Colors.blue),
                          )),
                          Expanded(
                            child: Column(
                              children: [
                                
                              ],
                            ),
                          )
                        ],
                      ),

                    ),
                  );
                },
              ),
              flex: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.home),
                      iconSize: 28,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.radio_button_checked),
                      iconSize: 28,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.shield),
                      iconSize: 28,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.waterfall_chart),
                      iconSize: 28,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.confirmation_num_outlined),
                      iconSize: 28,
                    ),
                  ],
                ),
              ),
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
