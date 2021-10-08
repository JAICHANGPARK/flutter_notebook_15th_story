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
        Row(
          children: [
            CircleAvatar(),
            Text("Live Auction 🔥"),
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined))
          ],
        )
      ],
    );
  }
}
