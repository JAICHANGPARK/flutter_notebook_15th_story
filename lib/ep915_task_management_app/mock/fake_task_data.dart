import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep915_task_management_app/model/task.dart';

List<Task> taskItems = [
  Task(
      title: "UX Design for MONS calendar",
      dueDateTime: "Oct 25, 2021",
      description: "In publishing and graphic design, Lorem Ipsum is a placeholder",
      taskTags: [
        TaskTag(tag: "High", color: Colors.orange),
        TaskTag(tag: "5 Score", color: Colors.deepPurpleAccent),
      ],
      taskRelate: TaskRelate(
        counter: 4,
        profileItems: [
          "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470__340.jpg",
          "https://cdn.pixabay.com/photo/2020/08/21/08/46/african-5505598__340.jpg",
          "https://cdn.pixabay.com/photo/2017/04/06/19/34/girl-2209147__340.jpg",
          "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427__340.jpg"
        ],
      )),
  Task(
      title: "UX Design for MONS calendar",
      dueDateTime: "Oct 25, 2021",
      description: "In publishing and graphic design, Lorem Ipsum is a placeholder",
      taskTags: [
        TaskTag(tag: "Normal", color: Colors.blue),
        TaskTag(tag: "5 Score", color: Colors.deepPurpleAccent),
      ],
      taskRelate: TaskRelate(
        counter: 4,
        profileItems: [
          "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470__340.jpg",
          "https://cdn.pixabay.com/photo/2020/08/21/08/46/african-5505598__340.jpg",
          "https://cdn.pixabay.com/photo/2017/04/06/19/34/girl-2209147__340.jpg",
          "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427__340.jpg"
        ],
      )),
];
