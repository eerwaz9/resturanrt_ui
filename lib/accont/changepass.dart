import 'package:flutter/material.dart';
import 'package:project/Theem/theem.dart';
import 'package:project/home/home.dart';

class changpass extends StatefulWidget {
  @override
  _changpassState createState() => _changpassState();
}

class _changpassState extends State<changpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.cyan[100],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.indigo,
            size: 20,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          margin:
              EdgeInsets.only(top: 10.0, right: 25.0, bottom: 10.0, left: 20.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            "تغير كلمة المرور",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 25,
                                color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 55,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 30, top: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: "كلمة المرور الحالية",
                                  hintStyle: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 55,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 30, top: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: "تاكيد كلمة المرور",
                                  hintStyle: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 55,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 30, top: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: "كلمة المرور الجديدة",
                                  hintStyle: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 55,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 30, top: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: "تاكيد كلمة المرورالجديدة",
                                  hintStyle: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: theem.seven),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "حفظ التغير ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
