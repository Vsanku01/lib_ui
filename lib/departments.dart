import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'semester.dart';

class DepartmentCard extends StatefulWidget {
  @override
  _DepartmentCardState createState() => _DepartmentCardState();
}

class _DepartmentCardState extends State<DepartmentCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            color: Color(0xffFFBA94),
          ),

          
          Container(
            height: MediaQuery.of(context).size.height - 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: Center(
              child: Container(
                height: 400,
                width: 350,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _buildCard('CSE','assets/cd.png'),
                          SizedBox(width: 8.0),
                          _buildCard('ECE','assets/ee.png'),
                          SizedBox(width: 8.0),
                          _buildCard('CIVIL','assets/civil.png'),
                          SizedBox(width: 8.0),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          _buildCard('EEE','assets/ee.png'),
                          SizedBox(width: 8.0),
                          _buildCard('PHYSICS','assets/physics.png'),
                          SizedBox(width: 8.0),
                          _buildCard('CHEMISTRY','assets/chemistry.png'),
                          SizedBox(width: 8.0),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCard(String title,String imgPath) {
    return InkWell(
      onTap: () {

        Navigator.of(context).push(MaterialPageRoute(builder: (_) {
          return Semesters(title);

        },),);

      },

      child: Container(
        height: 130.0,
        width: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.5),
//          color: Color(0xffFFB794),
        color: Colors.grey.withOpacity(0.2),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              height: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7.5),
                    topRight: Radius.circular(7.5),
                  ),
                  color: Color(0xffFF9D86),
                  image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover,
                  )),
            ),
            Positioned(
              top: 100.0,
              left: 2.0,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17.0,
                ),
              ),
            )
          ],
        ),
      ),

//  child: Stack(
//    children: <Widget>[
//      Material(
//        elevation: 1.0,
//        child: Container(
//          height: 120.0,
//          width: 100.0,
//          decoration: BoxDecoration(
//            borderRadius: BorderRadius.circular(7.5),
//            color: Color(0xffFF867A),
//          ),
//        ),
//      ),
//      Positioned(
//        top: 10.0,
//        child: Container(
//          height: 100.0,
//          color: Colors.white,
//        ),
//      )
//    ],
//  ),
    );
  }
}
