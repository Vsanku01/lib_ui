import 'package:flutter/material.dart';


class LectureList extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LecturePage(),
      );
    }
  }

  class LecturePage extends StatefulWidget {
    @override
    _LecturePageState createState() => _LecturePageState();
  }

  class _LecturePageState extends State<LecturePage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xff57C7DE).withOpacity(0.2),

        body: Stack(
          children: <Widget>[
            Positioned(
                top: MediaQuery.of(context).size.height - 300 ,
                right: MediaQuery.of(context).size.width - 400,
                child: Material(
                  elevation: 10.0,
                  borderRadius: BorderRadius.circular(30.0),
                  child: FloatingActionButton(
                    onPressed: ()  {

                      print('Tapped');

                    },
                    backgroundColor: Colors.white,
                    child: Icon(Icons.add,color: Colors.black),
                  ),
                )

            ),
            GridView(
              children: <Widget>[
                bookCard(Color(0xff54A6FF),Color(0xffFFB792),context),
                bookCard(Color(0xffFFAD7A),Color(0xff58A9FF),context),


              ],
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                //For 200 width we want 300 height
                childAspectRatio: 3 / 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              // If we have device with 300 pixels width the we will only have one column grid similar to list view
            ),
          ],
        ),

      );
    }

    Widget bookCard(Color color,Color cardColor,BuildContext context) {
      return Padding(
        padding: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            print('Card Tapped');


          },
          child: Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            elevation: 12.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(0.0),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(25.0),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/pdf.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "Graphics",
                )
              ],
            ),
          ),
        ),
      );
    }
  }

