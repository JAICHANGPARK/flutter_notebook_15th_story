import 'package:flutter/material.dart';

class JobHomeWidget extends StatefulWidget {
  const JobHomeWidget({Key? key}) : super(key: key);

  @override
  _JobHomeWidgetState createState() => _JobHomeWidgetState();
}

class _JobHomeWidgetState extends State<JobHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return    Padding(
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
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Image.network(
                                  "${e.img}",
                                  height: 52,
                                  width: 52,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 16),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "${e.title}",
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                          ),
                                          IconButton(
                                            iconSize: 16,
                                            onPressed: () {},
                                            icon: e.isFavorite ?? false
                                                ? Icon(Icons.favorite)
                                                : Icon(Icons.favorite_border),
                                            color: e.isFavorite ?? false ? Colors.green : Colors.grey,
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 12),
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.location_on,
                                              size: 14,
                                            ),
                                            Text(
                                              "${e.location}",
                                              style: TextStyle(fontSize: 13),
                                            ),
                                            Spacer(),
                                            Text(
                                              "${e.uploadDate}",
                                              style: TextStyle(fontSize: 11, color: Colors.grey),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.indigo, borderRadius: BorderRadius.circular(24)),
                                            padding: EdgeInsets.all(8),
                                            child: Text(
                                              e.timeType ?? "unknown",
                                              style: TextStyle(color: Colors.white),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ))
                      .toList(),
                ),
              ))
        ],
      ),
    );
  }
}
