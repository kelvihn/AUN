import 'package:aun/screens/chatBox.dart';
import 'package:aun/widgets/bottomNavBar.dart';
import 'package:aun/widgets/chatBubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 45,
            width: MediaQuery.of(context).size.width * 0.70,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(25)),
            child: Expanded(
                child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Write now...',
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                            icon: Icon(Ionicons.ios_send, color: Colors.green),
                            onPressed: () {}))))),
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
              child: Column(children: [
                Icon(MaterialCommunityIcons.video_off, size: 50),
                SizedBox(height: 10),
                Text('No Live Class',
                    style: TextStyle(fontWeight: FontWeight.w400))
              ])),
          SizedBox(height: 30),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              color: Colors.grey[200],
              child: Column(
                children: [
                  ChatBox(
                      isSender: false,
                      text: 'Yes we are fine, wow really nice',
                      color: Colors.white,
                      time: '11:05pm'),
                  ChatBox(
                      isSender: true,
                      text: 'Please come to my home today',
                      color: Colors.blue,
                      textColor: Colors.white,
                      time: '11:05pm'),
                ],
              ))
        ])));
  }
}
