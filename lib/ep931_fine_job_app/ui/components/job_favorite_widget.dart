import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep931_fine_job_app/mock/jobs.dart';

import 'job_component.dart';

class JobFavoriteWidget extends StatefulWidget {
  const JobFavoriteWidget({Key? key}) : super(key: key);

  @override
  _JobFavoriteWidgetState createState() => _JobFavoriteWidgetState();
}

class _JobFavoriteWidgetState extends State<JobFavoriteWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.arrow_back),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Text(
              "My Favorites",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: jobItems.length,
              itemBuilder: (context, index) {
                return JobComponent(
                  job: jobItems[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
