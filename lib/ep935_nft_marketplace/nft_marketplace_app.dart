import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep935_nft_marketplace/ui/pages/ntf_marketplace_home_page.dart';


class NftMarketPlaceApp extends StatelessWidget {
  const NftMarketPlaceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NftMarketplaceHomePage(),
    );
  }
}
