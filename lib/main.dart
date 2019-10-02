import 'package:flutter/material.dart';
import 'departments.dart';
import 'Lecture_list.dart';
import 'functions.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'firebase_retrieve.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



@override
  void initState()  {
    // TODO: implement initState
    super.initState();
    emailsend();
    Retriever();




  }

final Email email = Email(

  body: 'Email body',
  subject: 'Email subject',
  recipients: ['svdr2000@gmail.com'],
//    cc: ['cc@example.com'],
//    bcc: ['bcc@example.com'],
//    attachmentPath: '/path/to/attachment.zip',
);




@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image:DecorationImage(
                image: AssetImage('assets/init.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 180,
            child:
            Text(
              'DigiLib',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.blueGrey,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height - 300,
            left: MediaQuery.of(context).size.width - 350,
            child: InkWell(
              onTap: () {
                email;
                print('Button Pressed');
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return DepartmentCard();

                },),);
              },
              child: Container(
                height: 60,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white,
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffFE9A6F),
                      Color(0xffFEC373),
                    ]
                  )
                ),
                child: Center(
                  child: Text(
                    'Login with Gmail',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            )


          )
        ],
      ),
    );
  }
}
