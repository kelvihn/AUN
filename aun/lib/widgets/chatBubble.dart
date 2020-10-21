import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ChatBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          icon: Icon(Ionicons.ios_chatbubbles),
          onPressed: () {},
        ),
        Positioned(
            top: 10,
            right: 10,
            child: Container(
                height: 8,
                width: 8,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.red)))
      ],
    );
  }
}
