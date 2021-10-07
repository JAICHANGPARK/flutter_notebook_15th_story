import 'package:flutter/material.dart';

class NftMarketplaceHomePage extends StatefulWidget {
  const NftMarketplaceHomePage({Key? key}) : super(key: key);

  @override
  _NftMarketplaceHomePageState createState() => _NftMarketplaceHomePageState();
}

class _NftMarketplaceHomePageState extends State<NftMarketplaceHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.explore),
                    Text("Explore"),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search),
                    Text("Search"),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search),
                    Text("Search"),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.search),
                    Text("Search"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
