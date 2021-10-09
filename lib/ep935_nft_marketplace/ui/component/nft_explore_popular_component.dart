import 'package:flutter/material.dart';

class NftExplorePopularComponent extends StatefulWidget {
  const NftExplorePopularComponent({Key? key}) : super(key: key);

  @override
  _NftExplorePopularComponentState createState() => _NftExplorePopularComponentState();
}

class _NftExplorePopularComponentState extends State<NftExplorePopularComponent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 360,
              child: Card(
                child: Stack(
                  children: [
                    Positioned(
                        left: 16,
                        top: 16,
                        right: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage("https://cdn.pixabay.com/photo/2021/04/29/05/04/"
                                          "desert-6215516_960_720.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Sky on the ring",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text("5 Edition art")
                          ],
                        )),
                    Positioned(
                      left: 16,
                      bottom: 16,
                      right: 16,
                      child: Row(
                        children: [
                          SizedBox(
                            height: 48,
                            width: 48,
                            child: Stack(
                              children: [
                                Center(
                                  child: CircleAvatar(
                                    backgroundColor: Colors.pink,
                                  ),
                                ),
                                Positioned(
                                  child: CircleAvatar(
                                    radius: 8,
                                    child: Icon(
                                      Icons.check,
                                      size: 12,
                                    ),
                                    foregroundColor: Colors.white,
                                  ),
                                  right: 0,
                                  bottom: 0,
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Dreamwalker",
                            ),
                          ),
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(right: 0, left: 24),
                            child: Container(
                              height: 52,
                              color: Colors.black,
                              child: Center(
                                child: Text(
                                  "Place a Bid",
                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
