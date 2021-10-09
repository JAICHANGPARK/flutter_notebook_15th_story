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
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2021/04/29/05/04/"
                                            "desert-6215516_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
