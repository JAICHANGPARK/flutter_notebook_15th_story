import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep911_real_estate_app/model/real_estate.dart';

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
                  (index) => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2017/03/22/17/39/kitchen-2165756_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "\$ 499,990",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  "Betterhomes.",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Text("Exclusive, serviced, all bills included. City views"),
                          SizedBox(
                            height: 16,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.bed_outlined,
                                size: 20,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 4),
                              Text(
                                '2',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                Icons.bathtub_outlined,
                                size: 20,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "2",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                Icons.apps,
                                size: 20,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 4),
                              Text(
                                "2998",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Spacer(),
                              Text(
                                "Villa",
                                style: TextStyle(color: Colors.grey),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
