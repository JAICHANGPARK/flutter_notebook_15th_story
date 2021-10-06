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
                left: 0,
                right: 0,
                bottom: MediaQuery.of(context).size.height / 2,
                top: 0,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage("https://cdn.pixabay.com/photo/2015/07/29/00/08/photographer-865295_960_720.jpg"),
                          fit: BoxFit.cover)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.share),
                        color: Colors.white,
                      )
                    ],
                  ),
                )),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: MediaQuery.of(context).size.height / 3.2,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
