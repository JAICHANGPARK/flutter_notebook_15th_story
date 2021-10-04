import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook_15th_story/ep931_fine_job_app/mock/jobs.dart';

class FindJobMainPage extends StatefulWidget {
  const FindJobMainPage({Key? key}) : super(key: key);

  @override
  _FindJobMainPageState createState() => _FindJobMainPageState();
}

class _FindJobMainPageState extends State<FindJobMainPage> {
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              child: IndexedStack(
                index: _pageIndex,
                children: [


                ],
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
