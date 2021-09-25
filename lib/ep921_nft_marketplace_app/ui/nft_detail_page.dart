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
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      child: Text(
                        "Consume",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Row(
                          children: [
                            CircleAvatar(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Creator",
                                    style: TextStyle(fontSize: 12, color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Dreamwalker",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                        Expanded(
                            child: Row(
                          children: [
                            CircleAvatar(),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Current bid",
                                    style: TextStyle(fontSize: 12, color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "10000 ETH",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: "So happy to share my second collab with my dear father",
                          style: TextStyle(color: Colors.grey)),
                      TextSpan(text: "@Unknown", style: TextStyle(color: Colors.blue)),
                      TextSpan(
                          text: "I'm so proud of his work and accomplishments", style: TextStyle(color: Colors.grey)),
                    ])),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(child: Placeholder()),
                    Container(
                      height: 48,
                      decoration: BoxDecoration(
                        color: Colors.pink[50],
                      ),
                      child: Center(
                        child: Text(
                          "Buy it now",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
                flex: 14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
