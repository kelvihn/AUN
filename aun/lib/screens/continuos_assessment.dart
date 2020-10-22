import 'package:aun/widgets/chatBubble.dart';
import 'package:flutter/material.dart';

class Assessment extends StatefulWidget {
  @override
  _AssessmentState createState() => _AssessmentState();
}

class _AssessmentState extends State<Assessment> {
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
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                //crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('James Lawal',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 22)),
                            Text('SS3 Diamond')
                          ]),
                      SizedBox(height: 30),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('75.89%',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 22)),
                            Text('Rating')
                          ]),
                    ],
                  ),
                  Image.asset('assets/images/circle-cropped.png', height: 120)
                ],
              ))
        ])));
  }
}
