import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class tracking extends StatefulWidget {
  @override
  _trackingState createState() => _trackingState();
}

class _trackingState extends State<tracking> {
  Widget Getimelinek() {
    double Heght = 70.0;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        color: Colors.grey[50],
        child: Column(
          children: [
            new Container(
              height: Heght,
              child: TimelineTile(
                lineXY: 0.2,
                indicatorStyle: IndicatorStyle(height: 1),
                alignment: TimelineAlign.manual,
                endChild: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      new Text(
                        "تاكيد الطلبية",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                      new Icon(Icons.restaurant, color: Colors.red),
                    ],
                  ),
                ),
                startChild: Container(),
              ),
            ),
            new Container(
              height: Heght,
              child: TimelineTile(
                lineXY: 0.2,
                indicatorStyle: IndicatorStyle(height: 1),
                alignment: TimelineAlign.manual,
                endChild: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      new Text(
                        "تجهيز الطلبية",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                      new Icon(Icons.restaurant, color: Colors.red),
                    ],
                  ),
                ),
                startChild: Container(),
              ),
            ),
            new Container(
              height: Heght,
              child: TimelineTile(
                lineXY: 0.2,
                indicatorStyle: IndicatorStyle(height: 1),
                alignment: TimelineAlign.manual,
                endChild: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      new Text(
                        "تم تجهيز الطلبية",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                      new Icon(Icons.restaurant, color: Colors.red),
                    ],
                  ),
                ),
                startChild: Container(),
              ),
            ),
            new Container(
              height: Heght,
              child: TimelineTile(
                lineXY: 0.2,
                indicatorStyle: IndicatorStyle(height: 1),
                alignment: TimelineAlign.manual,
                endChild: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      new Text(
                        "السائق استلم الطلبية",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                      new Icon(Icons.restaurant, color: Colors.red),
                    ],
                  ),
                ),
                startChild: Container(),
              ),
            ),
            new Container(
              height: Heght,
              child: TimelineTile(
                lineXY: 0.2,
                indicatorStyle: IndicatorStyle(height: 1),
                alignment: TimelineAlign.manual,
                endChild: Container(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(10),
                      ),
                      new Text(
                        "قريب من مكان التوصيل",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                      new Icon(Icons.restaurant, color: Colors.red),
                    ],
                  ),
                ),
                startChild: Container(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget DilevryInfo() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        color: Colors.grey[100],
        width: 80,
        child: ListTile(
          title: Text(
            ": الاسم",
          ),
          subtitle: Text(
            "مهيب هراوة",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          leading: Container(
            width: 75.0,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("images/product/pro3.jpg"),
                ),
                borderRadius: BorderRadius.circular(8)),
          ),
          trailing: Container(
            width: 50,
            child: new Column(
              children: [
                Row(
                  children: [
                    new Icon(
                      Icons.star_border,
                      color: Colors.red,
                    ),
                    new Text(
                      "4.0",
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                new Text(
                  "1444",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "تتبع الطلبية",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
        actions: [
          InkWell(
            child: Row(
              children: [
                new Text(
                  "محادثة",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                ),
                new Icon(
                  Icons.chat,
                  color: Colors.red,
                )
              ],
            ),
            onTap: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          // DilevryInfo(),
          Padding(padding: EdgeInsets.only(top: 30)),
          Text(
            "الوقت المقدر لاستلام الطلبيه",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Text(
            "5:20:00",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),

          Padding(
            padding: EdgeInsets.all(30),
            child: Divider(
              color: Colors.grey[200],
            ),
          ),

          DilevryInfo(),
          Getimelinek(),
        ],
      ),
      bottomNavigationBar: Container(
        child: MaterialButton(
          onPressed: () {},
          child: new Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            child: Text(
              "الغاء الطلب",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
