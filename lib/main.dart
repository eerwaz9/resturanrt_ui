import 'package:flutter/material.dart';

import 'home/home.dart';

void main() {
  runApp(const plantidform());
}

class plantidform extends StatelessWidget {
  const plantidform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "screen",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      //  home: tracking(),
      home: home(),
      // home: shoping(),
      // home: prodect_detil(),
      // home: prodect(),

      debugShowCheckedModeBanner: false,
    );
  }
}
