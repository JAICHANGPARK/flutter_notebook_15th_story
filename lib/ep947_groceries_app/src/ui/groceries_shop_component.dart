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
          
        ],
      ),
    );
  }
}
