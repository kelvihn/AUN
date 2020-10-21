import 'package:aun/screens/chat.dart';
import 'package:aun/screens/chat_two.dart';
import 'package:aun/screens/classroom_one.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class IndexScreen extends StatefulWidget {
  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  int _currentIndex = 0;
  final List<Widget> _children = [ClassroomOne(), ChatTwo(), ClassroomOne()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: BottomNavigationBar(
          onTap: onTabTapped, // new
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: new Icon(Ionicons.ios_videocam), title: Container()),
            BottomNavigationBarItem(
                icon: new Icon(Ionicons.ios_chatbubbles), title: Container()),
            BottomNavigationBarItem(
                icon: Icon(Icons.attach_file), title: Container())
          ],
        ),
      ),
      body: _children[_currentIndex],
    );
  }
}
