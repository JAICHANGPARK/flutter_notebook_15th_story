/// NFT : Non-Fungible Token
///
///
import "package:flutter/material.dart";

import 'ui/nft_profile_page.dart';

class NFTMarketPlaceApp extends StatelessWidget {
  const NFTMarketPlaceApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: NFTProfilePage(),
    );
  }
}
