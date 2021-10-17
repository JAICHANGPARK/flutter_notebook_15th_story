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
                Text(
                  "Chatting",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: _SearchDelegate(),
                    );
                  },
                  icon: Icon(Icons.search),
                ),
              ],
            ),
          ),
          Text("Pinned"),
          SizedBox(
            height: 48,
            child: ListView.builder(itemBuilder: (context, index){
              if(index == 0) return CircleAvatar();
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(),
              );
            }),
          )

        ],
      ),
    );
  }
}

class _SearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return Container();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Container();
  }
}
