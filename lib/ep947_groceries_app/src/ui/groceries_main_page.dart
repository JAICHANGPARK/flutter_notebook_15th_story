import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep947_groceries_app/src/controller/bottom_index_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'groceries_shop_component.dart';

class GroceriesMainPage extends ConsumerWidget {
  const GroceriesMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
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
              Expanded(child: Consumer(
                builder: (context, ref, child) {
                  final value = ref.watch(bottomIndexProvider);
                  return IndexedStack(
                    index: value,
                    children: [
                      GroceriesShopComponent(),
                      Container(
                        child: Center(child: Text("buy")),
                      ),
                      Container(
                        child: Center(child: Text("send")),
                      ),
                      Container(
                        child: Center(child: Text("offers")),
                      ),
                      Container(
                        child: Center(child: Text("profile")),
                      ),
                    ],
                  );
                },
              )),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Consumer(
        builder: (context, ref, _) {
          final index = ref.watch(bottomIndexProvider);
          return BottomNavigationBar(
            onTap: (idx) {
              ref.read(bottomIndexProvider.notifier).setIndex(idx);
            },
            currentIndex: index,
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
