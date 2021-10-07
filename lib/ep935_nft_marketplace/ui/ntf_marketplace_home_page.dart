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
          child: Row(
            children: [],
          ),
        ),
      ),
    );
  }
}
