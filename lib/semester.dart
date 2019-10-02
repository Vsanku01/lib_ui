import 'package:flutter/material.dart';
import 'tabbar.dart';


class Semesters extends StatelessWidget {



  final String title;
  Semesters(this.title);






  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
      return TabBarController();
    } ,),);
  }


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Flexible(
                flex: 3,
                    child: Padding(
                  padding: EdgeInsets.only(
                      top: 100, left: 50.0),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),


              Flexible(
                flex: 3,
                child: Padding(
                        padding: EdgeInsets.all(0.0),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/teacher.png'),
                      fit: BoxFit.cover,
                    )),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),

         // ******************* SEMESTER - 1  ***********************
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Semester - 1',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            height: 0.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildCard(Color(0xff5C73D3), Color(0xff3352C9),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xffFFAD7A), Color(0xffFE9957),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xff39C3AD), Color(0xff39C3AD),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xff3352C9), Color(0xff3352C9),context),
                ],
              ),
            ),
          ),





          // ******************* SEMESTER - 2  ***********************

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Semester - 2',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            height: 0.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildCard(Color(0xff5C73D3), Color(0xff3352C9),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xffFFAD7A), Color(0xffFE9957),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xff39C3AD), Color(0xff39C3AD),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xff3352C9), Color(0xff3352C9),context),
                ],
              ),
            ),
          ),


          // ******************* SEMESTER - 3  ***********************

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Semester - 3',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            height: 0.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildCard(Color(0xff5C73D3), Color(0xff3352C9),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xffFFAD7A), Color(0xffFE9957),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xff39C3AD), Color(0xff39C3AD),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xff3352C9), Color(0xff3352C9),context),
                ],
              ),
            ),
          ),


          // ******************* SEMESTER - 4 ***********************

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Semester - 4',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            height: 0.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildCard(Color(0xff5C73D3), Color(0xff3352C9),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xffFFAD7A), Color(0xffFE9957),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xff39C3AD), Color(0xff39C3AD),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xff3352C9), Color(0xff3352C9),context),
                ],
              ),
            ),
          ),


          // ******************* SEMESTER - 5  ***********************

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Semester - 5',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            height: 0.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildCard(Color(0xff5C73D3), Color(0xff3352C9),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xffFFAD7A), Color(0xffFE9957),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xff39C3AD), Color(0xff39C3AD),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xff3352C9), Color(0xff3352C9),context),
                ],
              ),
            ),
          ),


          // ******************* SEMESTER - 6  ***********************

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Semester - 6',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            height: 0.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildCard(Color(0xff5C73D3), Color(0xff3352C9),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xffFFAD7A), Color(0xffFE9957),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xff39C3AD), Color(0xff39C3AD),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xff3352C9), Color(0xff3352C9),context),
                ],
              ),
            ),
          ),


          // ******************* SEMESTER - 7  ***********************

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Semester - 7',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            height: 0.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildCard(Color(0xff5C73D3), Color(0xff3352C9),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xffFFAD7A), Color(0xffFE9957),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xff39C3AD), Color(0xff39C3AD),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xff3352C9), Color(0xff3352C9),context),
                ],
              ),
            ),
          ),


          // ******************* SEMESTER - 8 ***********************

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Semester - 8',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(
            height: 0.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildCard(Color(0xff5C73D3), Color(0xff3352C9),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xffFFAD7A), Color(0xffFE9957),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xff39C3AD), Color(0xff39C3AD),context),
                  SizedBox(width: 10.0),
                  _buildCard(Color(0xff3352C9), Color(0xff3352C9),context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(Color color, Color color1,BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: color.withOpacity(0.6),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              height: 175.0,
              decoration: BoxDecoration(
                color: color1,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0),
                  topRight: Radius.circular(25.0),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/server.png'),
                  fit: BoxFit.scaleDown,
                )
              ),
            ),
            Positioned(
              top: 200.0,
              left: 10,
              child: Text('DBMS',
              style: TextStyle(
                fontSize: 20.0,
              ),),
            )
          ],
        ),
      ),
    );
  }
}





