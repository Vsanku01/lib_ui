import 'package:flutter/material.dart';
import 'Lecture_list.dart';
import 'package:lib_ui/test.dart';
class TabBarController extends StatefulWidget {
  @override
  _TabBarControllerState createState() => _TabBarControllerState();
}

class _TabBarControllerState extends State<TabBarController> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(vsync: this,length: 3);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff57C7DE),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30.0),
              child: TabBar(
                controller:  tabController,
                indicatorColor: Color(0xffFFBA94),
                labelColor: Colors.white,
//                indicatorSize: TabBarIndicatorSize.values,
                unselectedLabelColor: Colors.grey.withOpacity(0.6),
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      'Lecture Notes',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Video Lectures',
                      style: TextStyle(
                        color: Colors.white,
                          fontWeight: FontWeight.w600,
                         fontSize: 20.0,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Other References',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                  ),


                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(20.0),
              child: Container(
                height: MediaQuery.of(context).size.height,





                child: TabBarView(
                  controller: tabController,
                  children: <Widget>[
                   new MyTestApp(),
                    new MyTestApp(),
                    new MyTestApp(),




                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }





}
