import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep915_task_management_app/model/task.dart';

class TmaDetailPage extends StatefulWidget {
  final Task task;

  TmaDetailPage({Key? key, required this.task}) : super(key: key);

  @override
  _TmaDetailPageState createState() => _TmaDetailPageState();
}

class _TmaDetailPageState extends State<TmaDetailPage> {
  bool _taskCheck = false;
  bool _taskCheck2 = false;

  @override
  Widget build(BuildContext context) {
    var profileLength = widget.task.taskRelate?.profileItems?.length ?? 0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    Expanded(
                        child: Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        child: Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(Icons.keyboard_arrow_left),
                          ),
                        ),
                      ),
                    )),
                    Expanded(child: Center(child: Text("Today task"))),
                    Expanded(
                        child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Icon(Icons.edit_outlined),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                widget.task.title ?? "",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 12,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Created by dreamwalker \"Product Manager\"",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Text("${widget.task.description ?? ""}"
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
                  "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    Icon(
                      Icons.flag,
                      color: Colors.red,
                      size: 18,
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      widget.task.dueDateTime ?? "unknown",
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 48,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.task.taskTags?.length ?? 0,
                    itemBuilder: (context, index2) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          right: 16,
                          top: 8,
                          bottom: 8,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: widget.task.taskTags?[index2]?.color,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          child: Center(
                            child: Text(
                              widget.task.taskTags?[index2]?.tag ?? "",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 12,
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
                          backgroundImage: NetworkImage(widget.task.taskRelate?.profileItems?[i] ?? ""),
                        ),
                      ),
                    Positioned(
                      child: Align(
                          alignment: Alignment.centerLeft, child: Text("+ ${widget.task.taskRelate?.counter ?? ""}")),
                      left: 120,
                      right: 0,
                      bottom: 0,
                      top: 0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text("Subtask"),
              SizedBox(
                height: 8,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Interview with user"),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.flag,
                                color: Colors.grey,
                                size: 18,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "6 hours",
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Checkbox(
                          value: _taskCheck,
                          onChanged: (b) {
                            setState(() {
                              _taskCheck = b ?? false;
                            });
                          })
                    ],
                  )),
              SizedBox(
                height: 8,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Interview with user"),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.flag,
                                color: Colors.grey,
                                size: 18,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                "6 hours",
                                style: TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      Checkbox(
                          value: _taskCheck2,
                          onChanged: (b) {
                            setState(() {
                              _taskCheck2 = b ?? false;
                            });
                          })
                    ],
                  )),
              OutlinedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  size: 14,
                ),
                label: Text(
                  "Add Subtask",
                  style: TextStyle(fontSize: 12),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text("Attachment"),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.blue[50], borderRadius: BorderRadius.circular(8)),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: Row(
                      children: [
                        Icon(
                          Icons.file_copy_outlined,
                          size: 14,
                        ),
                        Text(
                          "User pinpoints.pdf",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
