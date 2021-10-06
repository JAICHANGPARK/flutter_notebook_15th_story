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
                        onPressed: () => Navigator.of(context).pop(),
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
                  padding: EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Job relative heading",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "4 week ago",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 12,
                            ),
                            Text("Abohar, Punjab"),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Type",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Full time",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Type",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Full time",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Salary",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "15,000",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "Job description",
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Center(
                          child: Text(
                            "APPLY NOW",
                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
