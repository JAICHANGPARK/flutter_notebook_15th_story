import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

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
        crossAxisAlignment: CrossAxisAlignment.start,
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
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Pinned",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 52,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return CircleAvatar(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.black,
                        child: Icon(LineIcons.commentDots),
                      );
                    }
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: CircleAvatar(),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Chats",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: CircleAvatar()),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("Dreamwalker"), Text("How about development Flutter?")],
                        ),
                      ),
                      Spacer(),
                      Align(alignment: Alignment.topRight, child: Text("12 : 30")),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(),
            ),
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
