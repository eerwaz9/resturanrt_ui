import 'package:flutter/material.dart';

import 'prodect.dart';

class prodect_detil extends StatefulWidget {
  const prodect_detil({Key? key}) : super(key: key);

  @override
  _prodect_detilState createState() => _prodect_detilState();
}

class _prodect_detilState extends State<prodect_detil> {
  var array_prodect = [
    {
      "prodect_id": "1",
      "prodect_name": "prodect name",
      "prodect_image": "images/product/pro1.jpg",
      "prodect_de": "كبدة من عند الجزار وليد الحرازي",
      "prodect_offer": "1",
    },
    {
      "prodect_id": "2",
      "prodect_name": "prodect name",
      "prodect_image": "images/product/pro2.jpg",
      "prodect_de": "صانونة محلاة بالكاليسيوم",
      "prodect_offer": "0",
    },
    {
      "prodect_id": "3",
      "prodect_name": "gssssssssssss",
      "prodect_image": "images/product/pro3.jpg",
      "prodect_de": "سمك فرن مع اليمون والزبيب طزج ",
      "prodect_offer": "0",
    },
    {
      "prodect_id": "3",
      "prodect_name": "gssssssssssss",
      "prodect_image": "images/product/pro3.jpg",
      "prodect_de": "سمك فرن مع اليمون والزبيب طزج ",
      "prodect_offer": "0",
    },
    {
      "prodect_id": "3",
      "prodect_name": "gssssssssssss",
      "prodect_image": "images/product/pro3.jpg",
      "prodect_de": "سمك فرن مع اليمون والزبيب طزج ",
      "prodect_offer": "0",
    },
    {
      "prodect_id": "3",
      "prodect_name": "gssssssssssss",
      "prodect_image": "images/product/pro3.jpg",
      "prodect_de": "سمك فرن مع اليمون والزبيب طزج ",
      "prodect_offer": "0",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "مركز الواحة",
            style: TextStyle(color: Colors.purple),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
          child: ListView.builder(
              itemCount: array_prodect.length,
              itemBuilder: (BuildContext context, int index) {
                return singalprodct(
                  prodect_id: array_prodect[index]["prodect_id"],
                  prodect_name: array_prodect[index]["prodect_name"],
                  prodect_image: array_prodect[index]["prodect_image"],
                  prodect_de: array_prodect[index]["prodect_de"],
                  prodect_offer: array_prodect[index]["prodect_offer"],
                );
              }),
        ),
      ),
    );
  }
}

class singalprodct extends StatelessWidget {
  final prodect_id;
  final prodect_name;
  final prodect_image;
  final prodect_de;
  final prodect_offer;
  singalprodct({
    this.prodect_id,
    this.prodect_image,
    this.prodect_name,
    this.prodect_de,
    this.prodect_offer,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => prodect()));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.grey[100],
        ),
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(5),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 5),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(prodect_image),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 100,
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      prodect_name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    RichText(
                        overflow: TextOverflow.clip,
                        text: TextSpan(children: [
                          TextSpan(
                              text: prodect_de,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              )),
                        ])),
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              width: 50,
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                  chechoffer(prodect_offer),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget chechoffer(String prodect_offer) {
    return prodect_offer == "1"
        ? Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red[400],
            ),
            child: Text(
              "عرض",
              style: TextStyle(fontSize: 14, color: Colors.white),
            ))
        : Text("");
  }
}
