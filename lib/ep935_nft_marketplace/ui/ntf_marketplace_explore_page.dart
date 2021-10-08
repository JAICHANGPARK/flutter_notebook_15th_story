import 'package:flutter/material.dart';

class NtfMarketplaceExplorePage extends StatefulWidget {
  const NtfMarketplaceExplorePage({Key? key}) : super(key: key);

  @override
  _NtfMarketplaceExplorePageState createState() => _NtfMarketplaceExplorePageState();
}

class _NtfMarketplaceExplorePageState extends State<NtfMarketplaceExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 24,
              ),
              Expanded(
                  child: Center(
                      child: Text(
                "Live Auction 🔥",
                style: TextStyle(fontWeight: FontWeight.bold),
              ))),
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined))
            ],
          ),
        ),
        SizedBox(
          height: 48,
          child: Container(
            color: Colors.blue,
            child: ListView(
              children: [
                Column(
                  children: [
                    Text(
                      "Popular",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 2,
                      width: 16,
                      decoration: BoxDecoration(color: Colors.black),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
