import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep911_real_estate_app/model/real_estate.dart';

import 'real_estate_card_widget.dart';

class RealEstateHomePage extends StatefulWidget {
  const RealEstateHomePage({Key? key}) : super(key: key);

  @override
  _RealEstateHomePageState createState() => _RealEstateHomePageState();
}

class _RealEstateHomePageState extends State<RealEstateHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.tune))],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dubai, Palm Jumeirah",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1,020 results",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    "Newest",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              ...List.generate(
                  realEstateItem.length,
                  (index) => RealEstateCardWidget()

    )
            ],
          ),
        ),
      ),
    );
  }
}
