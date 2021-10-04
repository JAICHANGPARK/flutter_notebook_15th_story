import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep931_fine_job_app/mock/jobs.dart';

class FindJobMainPage extends StatefulWidget {
  const FindJobMainPage({Key? key}) : super(key: key);

  @override
  _FindJobMainPageState createState() => _FindJobMainPageState();
}

class _FindJobMainPageState extends State<FindJobMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: Padding(
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
                      decoration: BoxDecoration(color: Colors.teal, borderRadius: BorderRadius.circular(6)),
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
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.network(
                                            "${e.img}",
                                            height: 52,
                                            width: 52,
                                            fit: BoxFit.cover,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Text("${e.title}"),
                                                    IconButton(
                                                      onPressed: () {},
                                                      icon: e.isFavorite ?? false ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                                                      color: e.isFavorite ?? false ? Colors.green : Colors.grey,
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(Icons.location_on),
                                                    Text("${e.location}"),
                                                    Text("${e.uploadDate}"),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: Colors.indigo
                                                      ),
                                                      child: Text(e.timeType ?? "unknown"),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ))
                            .toList(),
                      ),
                    ))
                  ],
                ),
              ),
              left: 0,
              bottom: 0,
              top: 0,
              right: 0,
            ),
            Positioned(
              child: PhysicalModel(
                elevation: 5,
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                child: Container(
                  height: 64,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.home,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Container(
                                height: 4,
                                color: Colors.green,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Container(
                                height: 4,
                                color: Colors.transparent,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.notifications,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Container(
                                height: 4,
                                color: Colors.transparent,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Container(
                                height: 4,
                                color: Colors.transparent,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              left: 0,
              right: 0,
              bottom: 0,
            ),
          ],
        ),
      ),
    );
  }
}
