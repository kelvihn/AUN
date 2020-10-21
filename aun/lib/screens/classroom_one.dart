import 'package:aun/widgets/appBar.dart';
import 'package:aun/widgets/bottomNavBar.dart';
import 'package:aun/widgets/chatBubble.dart';
import 'package:aun/widgets/optionBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ClassroomOne extends StatefulWidget {
  @override
  _ClassroomOneState createState() => _ClassroomOneState();
}

class _ClassroomOneState extends State<ClassroomOne> {
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
          actions: [ChatBubble()],
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: 20),
          Text('Virtual Learning Environment'),
          SizedBox(height: 20),
          Text('Social Studies', style: TextStyle(fontWeight: FontWeight.w600)),
          SizedBox(height: 5),
          Text('JSS 2A', style: TextStyle(color: Colors.blue)),
          SizedBox(height: 10),
          Container(
              color: Colors.grey[200],
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Text('Add Files',
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OptionBox(
                            color: Colors.white,
                            height: 50,
                            //width: MediaQuery.of(context).size.width / 4,
                            iconColor: Colors.blue[900],
                            icon: Icons.photo,
                            title: 'Media'),
                        OptionBox(
                            color: Colors.white,
                            height: 50,
                            //width: MediaQuery.of(context).size.width / 4,
                            iconColor: Colors.blueAccent,
                            icon: Ionicons.ios_document,
                            title: 'Doc'),
                        OptionBox(
                            color: Colors.white,
                            height: 50,
                            //width: MediaQuery.of(context).size.width / 4,
                            iconColor: Colors.red,
                            icon: Icons.link,
                            title: 'Links'),
                      ])
                ],
              )),
          SizedBox(height: 20),
          Text('Notes', style: TextStyle(fontWeight: FontWeight.w600)),
          SizedBox(height: 5),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(height: 2, color: Colors.black)),
          SizedBox(height: 20),
          OptionBox(
              color: Colors.grey[200],
              height: 50,
              width: MediaQuery.of(context).size.width * 0.90,
              iconColor: Colors.blue[900],
              icon: Icons.photo,
              title: 'How to develop a house...'),
          SizedBox(height: 10),
          OptionBox(
              color: Colors.grey[200],
              height: 50,
              width: MediaQuery.of(context).size.width * 0.90,
              iconColor: Colors.blueAccent,
              icon: Ionicons.ios_document,
              title: 'Photosynthesis Notes'),
          SizedBox(height: 10),
          OptionBox(
              color: Colors.grey[200],
              height: 50,
              width: MediaQuery.of(context).size.width * 0.90,
              iconColor: Colors.red,
              icon: Icons.link,
              title: 'Youtube: Bring back our...'),
          SizedBox(height: 10),
          OptionBox(
              color: Colors.grey[200],
              height: 50,
              width: MediaQuery.of(context).size.width * 0.90,
              iconColor: Colors.blue[900],
              icon: Icons.photo,
              title: 'How to develop a house...'),
          SizedBox(height: 10),
          OptionBox(
              color: Colors.grey[200],
              height: 50,
              width: MediaQuery.of(context).size.width * 0.90,
              iconColor: Colors.blueAccent,
              icon: Ionicons.ios_document,
              title: 'Photosynthesis Notes'),
          SizedBox(height: 10),
          OptionBox(
              color: Colors.grey[200],
              height: 50,
              width: MediaQuery.of(context).size.width * 0.90,
              iconColor: Colors.red,
              icon: Icons.link,
              title: 'Youtube: Bring back our...'),
        ])));
  }
}
