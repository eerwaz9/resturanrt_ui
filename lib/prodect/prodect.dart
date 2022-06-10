import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/shoping/shoping.dart';

class prodect extends StatefulWidget {
  const prodect({Key? key}) : super(key: key);

  @override
  _prodectState createState() => _prodectState();
}

class _prodectState extends State<prodect> {
  Widget HeaderBuild() {
    return Container(
        padding: EdgeInsets.all(15),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          //****************************************BACK
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 1,
                  spreadRadius: 5,
                  offset: Offset(0, 1),
                )
              ],
              borderRadius: BorderRadius.circular(10),
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

//**************************************** shoping cart
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 1,
                  spreadRadius: 5,
                  offset: Offset(0, 1),
                )
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => shoping()));
              },
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
                color: Colors.red,
              ),
            ),
          ),
        ]));
  }

  getimagprodeco() {
    return Container(
      padding: EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 1,
            spreadRadius: 5,
            offset: Offset(0, 1),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(120),
          bottomRight: Radius.circular(120),
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(right: 10, bottom: 200, top: 70),
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/product/pro1.jpg"),
                ),
                borderRadius: BorderRadius.circular(15)),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //****************************************BACK
              iconheader_Back(Colors.lightGreen, FontAwesomeIcons.minus),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "1",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 25),
                ),
              ),
//**************************************** shoping cart
              iconHeader_shoping(Colors.lightGreen, FontAwesomeIcons.plus),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Stack(
          children: [
            ListView(
              children: [
                getimagprodeco(),
                Container(
                  padding: EdgeInsets.all(50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Text(
                        "سمك مشوي",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      new Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: 20,
                            ),
                          ),
                          Icon(
                            Icons.local_fire_department,
                            color: Colors.red,
                            size: 40,
                          ),
                          new Text(
                            "5 favorite",
                            style: TextStyle(fontSize: 20),
                          ),
                          new Expanded(
                            child: Text(""),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 40,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 30),
                            child: new Text(
                              "5 revar",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 20),
                        child: new Text(
                          "هاذا الاسماك طازجة وشهيه مختارة من اجود انوع ااسماك على الاطلاق يتم ارسالها الى البحر هاذا الاسماك طازجة وشهيه مختارة من اجود انوع ااسماك على الاطلاق يتم ارسالها الى البحر  هاذا الاسماك طازجة وشهيه مختارة من اجود انوع ااسماك على "
                          "هاذا الاسماك طازجة وشهيه مختارة من اجود انوع ااسماك على الاطلاق يتم ارسالها الى البحر "
                          "هاذا الاسماك طازجة وشهيه مختارة من اجود انوع ااسماك على الاطلاق يتم ارسالها الى البحر "
                          "هاذا الاسماك طازجة وشهيه مختارة من اجود انوع ااسماك على الاطلاق يتم ارسالها الى البحر هاذا الاسماك طازجة وشهيه مختارة من اجود انوع ااسماك على الاطلاق يتم ارسالها الى البحر هاذا الاسماك طازجة وشهيه مختارة من اجود انوع ااسماك على الاطلاق يتم ارسالها الى البحر هاذا الاسماك طازجة وشهيه مختارة من اجود انوع ااسماك على الاطلاق يتم ارسالها الى البحر هاذا الاسماك طازجة وشهيه مختارة من اجود انوع ااسماك على الاطلاق يتم ارسالها الى البحر "
                          "الاطلاق يتم ارسالها الى البحر ",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
                    ],
                  ),
                )
              ],
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
        margin: EdgeInsets.all(8),
        height: 90,
        decoration: BoxDecoration(
          //color: Colors.red[300],
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[
                Colors.red,
                Color(0xFFE57373),
                Color(0xFFE57373),
                Colors.red,
              ]),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              spreadRadius: 3,
              offset: Offset(0, 4),
            )
          ],
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          children: [
            // Padding(padding: EdgeInsets.only(left: 30)),
            new Text(
              "1500",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Expanded(
              child: Text(""),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.red[400],
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 7,
                    spreadRadius: 2,
                    offset: Offset(0, 1),
                  )
                ],
                borderRadius: BorderRadius.circular(40),
              ),
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(
                "اضافة الى السلة",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            new Container(
              padding: EdgeInsets.only(right: 50, left: 10),
              child: Icon(
                Icons.shopping_basket,
                size: 30,
                color: Colors.white,
              ),
            )
          ],
        ),
        padding: EdgeInsets.only(
          left: 50,
        ),
      ),
    );
  }

  iconheader_Back(Color co, ic) {
    return Container(
      decoration: BoxDecoration(
        //   color: Colors.grey,
        boxShadow: [
          BoxShadow(
            color: co,
            blurRadius: 1,
            spreadRadius: 3,
            offset: Offset(0, 1),
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        onPressed: null,
        icon: FaIcon(
          ic,
          color: Colors.white,
        ),
      ),
    );
  }

  iconHeader_shoping(Color cl, ic) {
    return Container(
      decoration: BoxDecoration(
        //  color: Colors.grey,
        boxShadow: [
          BoxShadow(
            color: cl,
            blurRadius: 1,
            spreadRadius: 3,
            offset: Offset(0, 1),
          )
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: IconButton(
        onPressed: null,
        icon: FaIcon(
          ic,
          color: Colors.white,
        ),
      ),
    );
  }
}
