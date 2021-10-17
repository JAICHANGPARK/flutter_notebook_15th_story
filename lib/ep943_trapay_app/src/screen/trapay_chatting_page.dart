import 'package:flutter/material.dart';

class TrapayChattingPage extends StatefulWidget {
  const TrapayChattingPage({Key? key}) : super(key: key);

  @override
  _TrapayChattingPageState createState() => _TrapayChattingPageState();
}

class _TrapayChattingPageState extends State<TrapayChattingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text("Chatting"),
                IconButton(onPressed: (){}, icon: Icon(Icons.search))
              ],
            ),
          )
        ],
      ),
    );
  }
}
