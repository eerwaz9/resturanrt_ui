import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project/home/singlprodect.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  GlobalKey<ScaffoldState> _keyDrawer = GlobalKey<ScaffoldState>();
  var array_prodect = [
    {
      "prodect_id": "1",
      "prodect_name": "prodect name",
      "prodect_image": "images/product/pro1.jpg",
      "prodect_de": "كبدة من عند الجزار وليد الحرازي"
    },
    {
      "prodect_id": "2",
      "prodect_name": "prodect name",
      "prodect_image": "images/product/pro2.jpg",
      "prodect_de": "صانونة محلاة بالكاليسيوم"
    },
    {
      "prodect_id": "3",
      "prodect_name": "gssssssssssss",
      "prodect_image": "images/product/pro3.jpg",
      "prodect_de": "سمك فرن مع اليمون والزبيب طزج "
    },
  ];
  var array_cat = [
    {
      "cat_id": "1",
      "cat_name": "jg",
      "cat_image": "images/category/cat1.png",
    },
    {
      "cat_id": "2",
      "cat_name": "jaaag",
      "cat_image": "images/category/cat2.png",
    },
    {
      "cat_id": "3",
      "cat_name": "dd",
      "cat_image": "images/category/cat3.png",
    },
    {
      "cat_id": "4",
      "cat_name": "gjghgjghj",
      "cat_image": "images/category/cat4.png",
    },
    {
      "cat_id": "5",
      "cat_name": "fff",
      "cat_image": "images/category/cat5.png",
    },
    {
      "cat_id": "6",
      "cat_name": "ctz",
      "cat_image": "images/category/cat6.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      //   alignment: Alignment.bottomCenter,
      child: Scaffold(
        key: _keyDrawer,
        backgroundColor: Colors.grey[200],
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.4,
                    child: ListView.builder(
                      itemCount: array_prodect.length,
                      itemBuilder: (BuildContext context, int index) {
                        return singalprodct(
                          prodect_id: array_prodect[index]["prodect_id"],
                          prodect_image: array_prodect[index]["prodect_image"],
                          prodect_name: array_prodect[index]["prodect_name"],
                          prodect_de: array_prodect[index]["prodect_de"],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            selectedItemColor: Colors.red,
            selectedFontSize: 14,
            unselectedItemColor: Colors.grey,
            unselectedFontSize: 12,
            showSelectedLabels: true,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                  size: 30,
                ),
                label: "الاشعارات",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.restaurant_menu, size: 30),
                label: "العروض",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 30),
                label: "حسابي",
              ),
            ]),
      ),
    );
  }
}

// Container(
//   alignment: Alignment.bottomRight,
//   padding: EdgeInsets.all(10.0),
//   child: Column(
//     children: [
//       Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height * 4,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15.0),
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             image: AssetImage(
//               "assent/f7.png",
//             ),
//           ),
//         ),
//       ),
//       Text(
//         " prodect_id",
//         style: TextStyle(fontWeight: FontWeight.bold),
//       ),
//       Text(
//         "prodect_desc",
//         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
//       ),
//     ],
//   ),
// ),
