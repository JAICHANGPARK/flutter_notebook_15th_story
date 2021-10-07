import 'package:flutter/material.dart';

import 'ntf_marketplace_explore_page.dart';

class NftMarketplaceHomePage extends StatefulWidget {
  const NftMarketplaceHomePage({Key? key}) : super(key: key);

  @override
  _NftMarketplaceHomePageState createState() => _NftMarketplaceHomePageState();
}

class _NftMarketplaceHomePageState extends State<NftMarketplaceHomePage> {
  int _pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _pageIndex,
          children: [
            NtfMarketplaceExplorePage(),
            Container(child: Center(
              child: Text("Search"),
            ),),
            Container(child: Center(
              child: Text("Favorite"),
            ),),
            Container(child: Center(
              child: Text("Wallet"),
            ),),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 64,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
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
                      Icon(Icons.favorite_border),
                      Text("Search"),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.account_balance_wallet_outlined),
                      Text("Wallet"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
