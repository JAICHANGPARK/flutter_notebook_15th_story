import 'package:flutter/material.dart';

class GroceriesShopComponent extends StatefulWidget {
  const GroceriesShopComponent({Key? key}) : super(key: key);

  @override
  _GroceriesShopComponentState createState() => _GroceriesShopComponentState();
}

class _GroceriesShopComponentState extends State<GroceriesShopComponent> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          PhysicalModel(
            
            color: Colors.black.withOpacity(0.1),
            elevation: 2,
            child: Container(
              color: Colors.grey[50],
              child: TabBar(
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.green,
                  tabs: [
                Tab(
                  text: "Shops",
                ),
                Tab(
                  text: "Lists",
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
