import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep931_fine_job_app/model/job.dart';

class FindJobDetailPage extends StatefulWidget {
  Job job;

  FindJobDetailPage({Key? key, required this.job}) : super(key: key);

  @override
  _FindJobDetailPageState createState() => _FindJobDetailPageState();
}

class _FindJobDetailPageState extends State<FindJobDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.share))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
