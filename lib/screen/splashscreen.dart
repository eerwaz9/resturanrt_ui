import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/Theem/theem.dart';
import 'package:simple_shadow/simple_shadow.dart';

import 'getstarte.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  late Timer animTimer;
  double _width = 0;
  double _height = 0;
  @override
  void initState() {
    _width = 0;
    _height = 0;
    Future.delayed(Duration(microseconds: 0), () {
      setState(() {
        _width = 300;
        _height = 300;
      });
    });
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        _width = 0;
        _height = 0;
      });
    });
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx) => Getstarte()));
    });
    super.initState;
  }

  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.easeInSine,
          width: _width,
          height: _height,
          child: Container(
            width: _width,
            height: _height,
            alignment: Alignment.center,
            child: SimpleShadow(
              opacity: 0.7,
              color: Colors.black26,
              offset: Offset(2, 2),
              sigma: 8,
              child: Image(
                image: AssetImage(
                  "assent/fo5.png",
                ),
                width: 300,
                height: 300,
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: [
                    //  theem.PrimaryColor,
                    theem.scuondColor,
                    theem.PrimaryColor,
                  ]),
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.bottomCenter,
              colors: [
            //  theem.PrimaryColor,
            theem.scuondColor,
            theem.PrimaryColor,
          ])),
    );
  }
}
