import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NtfMarketplaceExplorePage extends StatefulWidget {
  const NtfMarketplaceExplorePage({Key? key}) : super(key: key);

  @override
  _NtfMarketplaceExplorePageState createState() => _NtfMarketplaceExplorePageState();
}

class _NtfMarketplaceExplorePageState extends State<NtfMarketplaceExplorePage> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                radius: 20,
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
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _tabIndex = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Popular",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: _tabIndex == 0 ? Colors.black : Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 2,
                          width: 16,
                          decoration: BoxDecoration(
                            color: _tabIndex == 0 ? Colors.black : Colors.transparent),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _tabIndex = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "On sale",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: _tabIndex == 1 ? Colors.black : Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 2,
                          width: 16,
                          decoration: BoxDecoration(
                              color: _tabIndex == 1 ? Colors.black : Colors.transparent),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _tabIndex = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Best sale",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: _tabIndex ==3 ? Colors.black : Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 2,
                          width: 16,
                          decoration: BoxDecoration(
                              color: _tabIndex == 3? Colors.black : Colors.transparent),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _tabIndex = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Newest",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: _tabIndex == 4 ? Colors.black : Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Container(
                          height: 2,
                          width: 16,
                          decoration: BoxDecoration(
                              color: _tabIndex == 4 ? Colors.black : Colors.transparent),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(child: IndexedStack(index: _tabIndex,
        children: [
          Container(
            color: Colors.blue,
            child: Center(
              child: Text("Popular "),
            ),
          ),
          Container(
            color: Colors.red,
            child: Center(
              child: Text("On sale "),
            ),
          ),
          Container(
            color: Colors.green,
            child: Center(
              child: Text("Best Sale "),
            ),
          ),
          Container(
            color: Colors.orange,
            child: Center(
              child: Text("Newest "),
            ),
          )
        ],))
      ],
    );
  }
}
