import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep943_trapay_app/src/data/fake_chat.dart';
import 'package:flutter_notebook_15th_story/ep943_trapay_app/src/model/trapay_chat.dart';
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
              itemCount: trapayChatItems.length,
              itemBuilder: (context, index) {
                TrapayChat chatData = trapayChatItems[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            chatData.avatarImg ?? "${chatData.name?.substring(0, 2)}",
                          ),
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "${chatData.name}",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                (chatData.newMsgCount ?? 0) > 0
                                    ? CircleAvatar(
                                        radius: 8,
                                        backgroundColor: Colors.red,
                                        foregroundColor: Colors.white,
                                        child: Center(
                                          child: Text(
                                            "${chatData.newMsgCount}",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                        ),
                                      )
                                    : Container()
                              ],
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Row(
                              children: [
                                Text(
                                  "${chatData.message}",
                                  style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                (chatData.isRead ?? false)
                                    ? Icon(
                                        Icons.check,
                                        color: Colors.green,
                                        size: 12,
                                      )
                                    : Container()
                              ],
                            ),
                          ],
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
