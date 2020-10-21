import 'package:aun/screens/index.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Aun());
}

class Aun extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AUN',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'DMSans',
        ),
        initialRoute: '/',
        routes: {'/': (context) => IndexScreen()});
  }
}
