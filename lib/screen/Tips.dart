import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:project/Theem/theem.dart';
import 'package:project/accont/register.dart';

class Tips extends StatefulWidget {
  const Tips({Key? key}) : super(key: key);

  @override
  _TipsState createState() => _TipsState();
}

class _TipsState extends State<Tips> {
  var Myarry = [
    {
      "title": "ابحث عن المناطق من جوالك",
      "info": "اختر افضل الاماكن في حرم المسجد",
      "image": "assent/photo/1.png",
    },
    {
      "title": "ابحث عن المناطق من جوالك",
      "info": "اختر افضل الاماكن في حرم المسجد",
      "image": "assent/photo/2.png",
    },
    {
      "title": "ابحث عن المناطق من جوالك",
      "info": "اختر افضل الاماكن في حرم المسجد",
      "image": "assent/photo/3.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    double Myheght = MediaQuery.of(context).size.height / 3;
    return Scaffold(
      body: new Container(
        child: Column(
          children: [
            new Container(
              padding: EdgeInsets.only(top: 25, left: 320),
              child: GestureDetector(
                child: Text(
                  'دخــــــول',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            new Container(
              height: 390,
              child: new PageIndicatorContainer(
                shape: IndicatorShape.circle(),
                length: Myarry.length,
                align: IndicatorAlign.bottom,
                indicatorColor: Colors.green,
                child: PageView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: Myarry.length,
                  itemBuilder: (BuildContext context, i) {
                    return SingleTips(
                      title: Myarry[i]["title"],
                      info: Myarry[i]["info"],
                      image: Myarry[i]["image"],
                    );
                  },
                ),
              ),
            ),
            Column(
              children: [
                new Container(
                  color: theem.scuondColor,
                  height: Myheght * 1,
                  child: ListView(
                    children: [
                      Column(
                        textDirection: TextDirection.rtl,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => register(),
                                ),
                              );
                            },
                            child: Container(
                              width: 350,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: theem.eght),
                              child: Text(
                                "انشاء حساب",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Container(
                              width: 350,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: theem.eght),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.facebook,
                                    size: 20,
                                  ),
                                  Text(
                                    "المتابعة بستخدام فيس بوك",
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
                          SizedBox(
                            height: 10,
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Container(
                              width: 350,
                              height: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.0),
                                  color: theem.eght),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.google,
                                    size: 20,
                                  ),
                                  Text(
                                    "المتابعة بستخدام حساب جوجل",
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
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SingleTips extends StatelessWidget {
  var title;
  var info;
  final image;
  SingleTips({this.title, this.info, this.image});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        new Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        new Padding(
          padding: EdgeInsets.only(bottom: 80),
          child: Text(
            info,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
