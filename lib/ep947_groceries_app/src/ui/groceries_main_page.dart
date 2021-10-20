import 'package:flutter/material.dart';

import 'groceries_shop_component.dart';

class GroceriesMainPage extends StatefulWidget {
  const GroceriesMainPage({Key? key}) : super(key: key);

  @override
  _GroceriesMainPageState createState() => _GroceriesMainPageState();
}

class _GroceriesMainPageState extends State<GroceriesMainPage> {
  final ValueNotifier<int> _bottomTabIdx = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Deliver to "),
                            Text(
                              "Work",
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                            ),
                          ],
                        )),
                    Expanded(
                        child: Align(
                      alignment: Alignment.centerRight,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.black,
                        child: Text("D"),
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Expanded(
                  child: ValueListenableBuilder<int>(
                valueListenable: _bottomTabIdx,
                builder: (context, pageIndex, child) {
                  return IndexedStack(
                    index: pageIndex,
                    children: [
                      GroceriesShopComponent(),
                      Container(
                        child: Center(
                          child: Text("buy"),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text("send"),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text("offers"),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Text("profile"),
                        ),
                      ),
                    ],
                  );
                },
              )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: _bottomTabIdx,
        builder: (context, bottomTabIdx, child) {
          return BottomNavigationBar(
            onTap: (idx) {
              _bottomTabIdx.value = idx;
            },
            currentIndex: bottomTabIdx,
            selectedItemColor: Colors.green,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Shops"),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: "Buy"),
              BottomNavigationBarItem(icon: Icon(Icons.markunread_mailbox_outlined), label: "Send"),
              BottomNavigationBarItem(icon: Icon(Icons.verified_outlined), label: "Offers"),
              BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile")
            ],
          );
        },
      ),
    );
  }
}
