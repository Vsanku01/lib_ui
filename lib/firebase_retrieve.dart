import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


final _firestore = Firestore.instance;

class Retriever extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MessageRetriever(),

    );
  }
}

class MessageRetriever extends StatefulWidget {
  @override
  _MessageRetrieverState createState() => _MessageRetrieverState();
}

class _MessageRetrieverState extends State<MessageRetriever> {


  String web;
  WebviewScaffold webview;
  var url_list = [];



  void getUrl () async {

    final messages = await _firestore.collection('URL').getDocuments();
    for(var message in messages.documents){

      print(message.data);
      await url_list.add(message.data);
      await print(url_list.length);








    }
  }




  void wevView() async {


    webview =  await WebviewScaffold(
      url: web,
      withJavascript: true,

    );
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUrl();

   
//    MessageRetriever();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: webview,
    );
  }
}

