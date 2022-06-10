import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'singleprodect.dart';

class shoping extends StatefulWidget {
  @override
  _shopingState createState() => _shopingState();
}

class _shopingState extends State<shoping> {
  var pro_array = [
    {
      "pro_id": "1",
      "pro_name": "مضغوط ",
      "pro_image": "images/category/cat1.png",
      "pro_pric": "300",
      "pro_pqt": "3",
    },
    {
      "pro_id": "2",
      "pro_name": "مشاوي",
      "pro_image": "images/category/cat2.png",
      "pro_pric": "300",
      "pro_pqt": "5",
    },
    {
      "pro_id": "3",
      "pro_name": "مشاوي",
      "pro_image": "images/category/cat3.png",
      "pro_pric": "300",
      "pro_pqt": "6",
    },
    {
      "pro_id": "3",
      "pro_name": "مشاوي",
      "pro_image": "images/category/cat3.png",
      "pro_pric": "300",
      "pro_pqt": "6",
    },
  ];
  Widget HeaderBuild() {
    return Container(
        padding: EdgeInsets.all(15),
        child: Row(//mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 30,
                color: Colors.red,
              ),
            ),
          ),
          Expanded(
            child: Text(""),
          ),
        ]));
  }

  void _showsheetMessege(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(120), topLeft: Radius.circular(20))),
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 30,
                      ),
                      child: Icon(
                        Icons.done,
                        color: Colors.red,
                        size: 100,
                      ),
                    ),
                    new Text(
                      "شكرا لطلبك",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    new Text(
                      "يمكنك متتبع لطلب من خلال الزر في الاسفل ",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 50,
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Container(
                          width: 300,
                          height: 30,
                          child: Text(
                            "تابع الطلبية",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 50,
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Container(
                          width: 300,
                          height: 30,
                          child: Text(
                            " الانتقال الى الماكولات",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.grey[100],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 60),
              child: ListView.builder(
                  itemCount: pro_array.length,
                  itemBuilder: (context, Index) {
                    return singleprodect(
                      pro_id: pro_array[Index]["pro_id"],
                      pro_pric: pro_array[Index]["pro_pric"],
                      pro_pqt: pro_array[Index]["pro_pqt"],
                      pro_name: pro_array[Index]["pro_name"],
                      pro_image: pro_array[Index]["pro_image"],
                    );
                  }),
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              top: 0,
              height: 120,
              child: HeaderBuild(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 240,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                        ),
                        Text(
                          "1000",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Expanded(child: Text("")),
                        Text(
                          "السائق",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                        ),
                        Text(
                          "1000",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Expanded(child: Text("")),
                        Text(
                          "اجمالي الكلي",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                        ),
                        Text(
                          "1000",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Expanded(child: Text("")),
                        Text(
                          "اجمالي المبلغ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    "اضافة الى سلة ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    _showsheetMessege(context);
                  },
                  child: Text(
                    "تاكيد الطلب ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  iconheader_Back(Color co, ic) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        boxShadow: [
          BoxShadow(
            color: co,
            blurRadius: 1,
            spreadRadius: 3,
            offset: Offset(0, 1),
          )
        ],
        borderRadius: BorderRadius.circular(25),
      ),
      child: IconButton(
        onPressed: () {},
        icon: FaIcon(
          ic,
          color: Colors.white,
        ),
      ),
    );
  }
}
