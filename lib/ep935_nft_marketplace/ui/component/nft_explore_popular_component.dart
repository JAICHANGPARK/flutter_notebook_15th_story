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
                  Positioned(child: Column(children: [
                    
                  ],))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
