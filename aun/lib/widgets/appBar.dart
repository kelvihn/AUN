import 'package:aun/widgets/chatBubble.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Text('AUN',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600)),
      leading: IconButton(icon: Icon(Icons.sort), onPressed: () {}),
      actions: [ChatBubble()],
    );
  }
}
