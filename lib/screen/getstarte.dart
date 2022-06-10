import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/Theem/theem.dart';

class Getstarte extends StatefulWidget {
  const Getstarte({Key? key}) : super(key: key);

  @override
  _GetstarteState createState() => _GetstarteState();
}

class _GetstarteState extends State<Getstarte> {
  @override
  Widget build(BuildContext context) {
    double Myheght = MediaQuery.of(context).size.height / 3;
    return Scaffold(
      body: new Container(
        child: Column(
          children: [
            new Container(
              height: Myheght * 2,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assent/fo5.png"), fit: BoxFit.contain),
              ),
            ),
            new Container(
              height: Myheght,
              decoration: BoxDecoration(
                  color: theem.three,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3)),
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: ListView(
                children: [
                  Column(
                    textDirection: TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "تطبيق من عمل المهندس وزير المليكي",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 25.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      Text(
                        "يقوم التطبيق بطلب كرسي من قبل المستخدم ",
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontSize: 20.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: GestureDetector(
                          // onTap: () {
                          // Navigator.push(context,
                          // MaterialPageRoute(builder: (context) {
                          //  return Tips();
                          //    })
                          //  );
                          //   },
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 40, right: 40, top: 7, bottom: 7),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Text(
                              "ابداء هنا",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
