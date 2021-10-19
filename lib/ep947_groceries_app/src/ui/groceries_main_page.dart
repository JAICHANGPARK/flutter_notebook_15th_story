import 'package:flutter/material.dart';

class GroceriesMainPage extends StatefulWidget {
  const GroceriesMainPage({Key? key}) : super(key: key);

  @override
  _GroceriesMainPageState createState() => _GroceriesMainPageState();
}

class _GroceriesMainPageState extends State<GroceriesMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Expanded(child: Placeholder()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Shops"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: "Buy"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Send"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Shops"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined), label: "Shops")],
      ),
    );
  }
}
