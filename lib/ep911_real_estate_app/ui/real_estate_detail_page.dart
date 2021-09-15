import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep911_real_estate_app/model/real_estate.dart';

class RealEstateDetailPage extends StatefulWidget {
  final RealEstate realEstate;

  RealEstateDetailPage({Key? key, required this.realEstate}) : super(key: key);

  @override
  _RealEstateDetailPageState createState() => _RealEstateDetailPageState();
}

class _RealEstateDetailPageState extends State<RealEstateDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    image: DecorationImage(
                        image: NetworkImage(
                          widget.realEstate.img ?? "",
                        ),
                        fit: BoxFit.cover)),
              ),
              left: 0,
              top: 0,
              right: 0,
              bottom: MediaQuery.of(context).size.height / 2,
            ),
            Positioned(child: Container()),
          ],
        ),
      ),
    );
  }
}
