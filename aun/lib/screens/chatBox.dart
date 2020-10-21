import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  final bool isSender;
  final String text;
  final Color color;
  final Color textColor;
  final String time;

  const ChatBox(
      {Key key,
      this.isSender,
      this.text,
      this.color,
      this.textColor,
      this.time})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: (isSender) ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
            alignment:
                (isSender) ? Alignment.centerRight : Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 7, horizontal: 7),
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.green)),
              SizedBox(width: 5),
              Column(
                  crossAxisAlignment: (isSender)
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Text(text, style: TextStyle(color: textColor))),
                    SizedBox(height: 7),
                    Text(time)
                  ])
            ])));
  }
}
