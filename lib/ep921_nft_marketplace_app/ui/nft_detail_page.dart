import 'package:flutter/material.dart';

class NftDetailPage extends StatefulWidget {
  const NftDetailPage({Key? key}) : super(key: key);

  @override
  _NftDetailPageState createState() => _NftDetailPageState();
}

class _NftDetailPageState extends State<NftDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(24),
                      image: DecorationImage(
                          image:
                              NetworkImage("https://cdn.pixabay.com/photo/2018/03/30/15/11/deer-3275594_960_720.jpg"),
                          fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 16,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.keyboard_arrow_left),
                              color: Colors.white,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.more_vert),
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 16,
                        bottom: 16,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.transparent,
                          child: Icon(
                            Icons.favorite_border,
                            color: Colors.pink,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                flex: 14,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Consume"),
                    Row(
                      children: [
                        CircleAvatar(),
                        Column(   crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Creator"),
                            Text("Dreamwalker"),
                          ],
                        ),
                        CircleAvatar(),
                        Column(   crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Current bid"),
                            Text("10000 ETH"),
                          ],
                        ),
                      ],
                    ),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: "So happy to share my second collab with my dear father",
                          style: TextStyle(color: Colors.grey)),
                      TextSpan(text: "@Unknown", style: TextStyle(color: Colors.blue)),
                      TextSpan(
                          text: "I'm so proud of his work and accomplishments", style: TextStyle(color: Colors.grey)),
                    ])),


                  ],
                ),
                flex: 11,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
