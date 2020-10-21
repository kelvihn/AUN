import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: IconButton(icon: Icon(Icons.sort), onPressed: () {}),
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          title: Text('AUN', style: TextStyle(fontWeight: FontWeight.bold)),
          actions: [
            Icon(Icons.chat, color: Colors.black),
            Icon(Icons.person_outline, color: Colors.black)
          ],
        ),
        body: SingleChildScrollView(
            child: Column(children: [Text('Dashboard'), Stack(children: [])])));
  }
}
