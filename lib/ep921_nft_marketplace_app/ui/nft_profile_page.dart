import 'package:flutter/material.dart';

class NFTProfilePage extends StatefulWidget {
  const NFTProfilePage({Key? key}) : super(key: key);

  @override
  _NFTProfilePageState createState() => _NFTProfilePageState();
}

class _NFTProfilePageState extends State<NFTProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_left)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
                ],
              ),
              CircleAvatar(
                radius: 48,
                    backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/01/25/06/12/beijing-opera-1160109_960_720.jpg"),

              ),
              Text("Hello World"),
              TextButton(onPressed: (){}, child: Text(""))
            ],
          ),
        ),
      ),
    );
  }
}
