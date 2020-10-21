import 'package:flutter/material.dart';

class OptionBox extends StatelessWidget {
  final String title;
  final IconData icon;
  final double height;
  final double width;
  final Color color;
  final Color iconColor;

  const OptionBox(
      {Key key,
      this.title,
      this.icon,
      this.height,
      this.width,
      this.color,
      this.iconColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(25)),
        child: Center(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Icon(icon, color: iconColor, size: 25),
              SizedBox(width: 7),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                overflow: TextOverflow.ellipsis,
              )
            ])));
  }
}
