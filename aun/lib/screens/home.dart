import 'package:aun/widgets/chatBubble.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: Text('AUN',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
          leading: IconButton(icon: Icon(Icons.sort), onPressed: () {}),
          actions: [
            ChatBubble(),
            Container(
                margin: EdgeInsets.only(right: 10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/cropped.png'),
                        fit: BoxFit.cover)))
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: 20),
          Text('My Wards'),
        ])));
  }
}
