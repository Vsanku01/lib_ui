import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';

final _firestore = Firestore.instance;



class Hai {
  String link1;
  String link2;

  Hai(this.link1, this.link2);

  Hai.fromJson(Map<String, dynamic> json) {
    link1 = json['link1'];
    link2 = json['link2'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['link1'] = this.link1;
    data['link2'] = this.link2;
    print(data['link1']);
    print('HAiiii');
    return data;
  }
}


class MyTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TestPage(),
    );
  }
}

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {








   var messages;
   var message;



List url_list = [];


  Future getUrl () async {

     messages = await _firestore.collection('URL').getDocuments();
    for( message in messages.documents){

     print(message.data);

    }
  }





  @override
  void initState() {
    // TODO: implement initStates
    getUrl().then((_) {

      setState(() {
        Hai(message.data['link1'],message.data['link2']);

      });

    },);



  }





  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome'),
          ),
          body: GridView.count(
// Create a grid with 2 columns. If you change the scrollDirection to
// horizontal, this produces 2 rows.
            crossAxisCount: 2,
// Generate 100 widgets that display their index in the List.
            children: List.generate(url_list.length, (index) {
              return bookCard(Color(0xff54A6FF),Color(0xffFFB792),context);
            }),
          ),
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
