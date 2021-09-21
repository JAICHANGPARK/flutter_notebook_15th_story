import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep915_task_management_app/mock/fake_task_data.dart';

class TmaHomePage extends StatefulWidget {
  const TmaHomePage({Key? key}) : super(key: key);

  @override
  _TmaHomePageState createState() => _TmaHomePageState();
}

class _TmaHomePageState extends State<TmaHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                left: 8,
                right: 0,
                bottom: 0,
                top: 16,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 18,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Hello,",
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            " Dreamwalker",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 16),
                        child: Row(
                          children: [
                            Text(
                              "4 New",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              " tasks today",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 240,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: taskItems.length,
                            itemBuilder: (context, index) {
                              var profileLength = taskItems[index].taskRelate?.profileItems?.length ?? 0;
                              return Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Container(
                                  width: MediaQuery.of(context).size.width - 100,
                                  decoration: BoxDecoration(
                                      color: Colors.orangeAccent[100], borderRadius: BorderRadius.circular(16)),
                                  // child: Center(
                                  //   child: Text("$index"),
                                  // ),
                                  padding: EdgeInsets.only(top: 16, right: 24, bottom: 8, left: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        taskItems[index].title ?? "Unknown Task Name",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 12),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.flag,
                                              color: Colors.red,
                                              size: 18,
                                            ),
                                            Text(
                                              taskItems[index].dueDateTime ?? "unknown",
                                              style: TextStyle(
                                                fontSize: 14,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text(
                                        taskItems[index].description ?? "Unknown Task Name",
                                        style: TextStyle(
                                            // fontSize: 13,
                                            ),
                                      ),
                                      SizedBox(
                                        height: 48,
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: taskItems[index].taskTags?.length ?? 0,
                                            itemBuilder: (context, index2) {
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                  right: 16,
                                                  top: 8,
                                                  bottom: 8,
                                                ),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: taskItems[index].taskTags?[index2]?.color,
                                                    borderRadius: BorderRadius.circular(16),
                                                  ),
                                                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                                  child: Center(
                                                    child: Text(
                                                      taskItems[index].taskTags?[index2]?.tag ?? "",
                                                      style: TextStyle(color: Colors.white),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }),
                                      ),
                                      SizedBox(
                                        height: 48,
                                        child: Stack(
                                          children: [
                                            for (int i = 0; i < profileLength; i++)
                                              Positioned(
                                                left: i * 24,
                                                top: 0,
                                                bottom: 0,
                                                child: CircleAvatar(
                                                  backgroundImage:
                                                      NetworkImage(taskItems[index].taskRelate?.profileItems?[i] ?? ""),
                                                ),
                                              ),
                                            Positioned(
                                              child: Center(
                                                  child: Text("+ ${taskItems[index].taskRelate?.counter ?? ""}")),
                                              left: 32,
                                              right: 0,
                                              bottom: 0,
                                              top: 0,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 16),
                        child: Row(
                          children: [
                            Text(
                              "To",
                              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                            ),
                            Text(
                              " Do",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.blue[100],
                              foregroundColor: Colors.black,
                              child: Text("3"),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 130,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: taskTodoItems.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 16),
                                child: Container(
                                    width: MediaQuery.of(context).size.width / 2.5,
                                    decoration:
                                        BoxDecoration(color: Colors.red[100], borderRadius: BorderRadius.circular(16)),
                                    padding: EdgeInsets.only(top: 16, bottom: 16, left: 8, right: 20),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          taskTodoItems[index].priority,
                                          style: TextStyle(
                                            color: taskTodoItems[index].priority == "Urgent" ? Colors.red : Colors.blue,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          taskTodoItems[index].title,
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.flag,
                                              color: Colors.red,
                                              size: 14,
                                            ),
                                            SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              taskTodoItems[index].dueDatetime,
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        )
                                      ],
                                    )),
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 24, bottom: 16),
                        child: Row(
                          children: [
                            Text(
                              "In",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              " Progress",
                              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            CircleAvatar(
                              radius: 16,
                              backgroundColor: Colors.red[100],
                              foregroundColor: Colors.black,
                              child: Text("7"),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                          height: 80,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Card(
                              elevation: 4,
                              child: Row(
                                children: [],
                              ),
                            ),
                          )),
                    ],
                  ),
                )),
            Positioned(
                left: 16,
                right: 16,
                bottom: 8,
                child: Container(
                  height: 64,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), offset: Offset(1, 2))]),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            size: 28,
                            color: Colors.orange,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          CircleAvatar(
                            radius: 3,
                            backgroundColor: Colors.orange,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            size: 28,
                            color: Colors.orange[200],
                          ),
                          // SizedBox(height: 4,),
                          // CircleAvatar(
                          //   radius: 3,
                          //   backgroundColor: Colors.orange,
                          // )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.check_box_outlined,
                            size: 28,
                            color: Colors.orange[200],
                          ),
                          // SizedBox(height: 4,),
                          // CircleAvatar(
                          //   radius: 3,
                          //   backgroundColor: Colors.orange,
                          // )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Badge(
                            child: Icon(
                              Icons.notifications_outlined,
                              size: 28,
                              color: Colors.orange[200],
                            ),
                          )

                          // SizedBox(height: 4,),
                          // CircleAvatar(
                          //   radius: 3,
                          //   backgroundColor: Colors.orange,
                          // )
                        ],
                      ),
                      CircleAvatar(
                        radius: 16,
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
