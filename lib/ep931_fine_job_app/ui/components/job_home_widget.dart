import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep931_fine_job_app/mock/jobs.dart';
import 'package:flutter_notebook_15th_story/ep931_fine_job_app/ui/find_job_detail_page.dart';

import 'job_component.dart';

class JobHomeWidget extends StatefulWidget {
  const JobHomeWidget({Key? key}) : super(key: key);

  @override
  _JobHomeWidgetState createState() => _JobHomeWidgetState();
}

class _JobHomeWidgetState extends State<JobHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 16,
                width: 38,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 2,
                      color: Colors.black,
                    ),
                    Container(
                      height: 2,
                      color: Colors.black,
                    ),
                    Container(
                      height: 2,
                      width: 16,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
              Spacer(),
              CircleAvatar(
                radius: 16,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: SizedBox(
              height: 48,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(24)),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        border: InputBorder.none,
                        hintText: "Search job here...",
                      ),
                    )),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.filter_alt),
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.teal,
              borderRadius: BorderRadius.circular(6),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Looking for Job Open Big\nOpportunity",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_downward_outlined,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Apply now",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Jobs for you",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text(
                  "See all(15)",
                  style: TextStyle(fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: jobItems
                  .map((e) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: SizedBox(
                            width: double.infinity,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => FindJobDetailPage(job: e)));
                              },
                              child: JobComponent(
                                job: e,
                              ),
                            )),
                      ))
                  .toList(),
            ),
          ))
        ],
      ),
    );
  }
}
