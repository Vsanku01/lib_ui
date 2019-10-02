import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:convert';
import 'dart:async';
import 'package:flutter/services.dart';


final _firestore = Firestore.instance;
var messages;
var message;





class Hai {
  String link1;
  String link2;
  String link3;
  String link4;

  Hai(this.link1, this.link2);

  Hai.fromJson(Map<String, dynamic> json) {
    link1 = json['link1'];
    link2 = json['link2'];
    link3 = json['link3'];
    link4 = json['link4'];


  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['link1'] = this.link1;
    data['link2'] = this.link2;
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



  Future getUrl () async {

     messages = await _firestore.collection('URL').getDocuments();
    for( message in messages.documents){

     print(message.data);


    }
  }



  @override
  void initState() {
    // TODO: implement initStates
    getUrl();

    


  }





  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome'),
          ),
          body: StreamBuilder(
            stream: Firestore.instance.collection('URL').snapshots(),
            builder: (context,snapshot) {
              if(!snapshot.hasData) return const Text('Loading');
              return GridView.builder(
                itemCount: snapshot.data.documents.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    //For 200 width we want 300 height
                    childAspectRatio: 3 / 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context,index ) =>  bookCard(Color(0xff54A6FF),Color(0xffFFB792),context),

              );
            },
          )
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
