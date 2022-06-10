import 'package:flutter/material.dart';

class fvorit extends StatefulWidget {
  const fvorit({Key? key}) : super(key: key);

  @override
  _fvoritState createState() => _fvoritState();
}

class _fvoritState extends State<fvorit> {
  var array_prodect = [
    {
      "prodect_id": "1",
      "prodect_name": "prodect name",
      "prodect_image": "images/product/pro1.jpg",
      "prodect_de": "كبدة من عند الجزار وليد الحرازي",
      "prodect_pric": "1200"
    },
    {
      "prodect_id": "2",
      "prodect_name": "prodect name",
      "prodect_image": "images/product/pro2.jpg",
      "prodect_de": "صانونة محلاة بالكاليسيوم",
      "prodect_pric": "1200"
    },
    {
      "prodect_id": "3",
      "prodect_name": "gssssssssssss",
      "prodect_image": "images/product/pro3.jpg",
      "prodect_de": "سمك فرن مع اليمون والزبيب طزج ",
      "prodect_pric": "2000"
    },
    {
      "prodect_id": "3",
      "prodect_name": "gssssssssssss",
      "prodect_image": "images/product/pro3.jpg",
      "prodect_de": "سمك فرن مع اليمون والزبيب طزج ",
      "prodect_pric": "1100"
    },
    {
      "prodect_id": "3",
      "prodect_name": "gssssssssssss",
      "prodect_image": "images/product/pro3.jpg",
      "prodect_de": "سمك فرن مع اليمون والزبيب طزج ",
      "prodect_pric": "1700"
    },
    {
      "prodect_id": "3",
      "prodect_name": "gssssssssssss",
      "prodect_image": "images/product/pro3.jpg",
      "prodect_de": "سمك فرن مع اليمون والزبيب طزج ",
      "prodect_pric": "1200"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "المفضلة",
          style: TextStyle(color: Colors.purple),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.8),
            itemCount: array_prodect.length,
            itemBuilder: (BuildContext context, int index) {
              return singalprodct(
                prodect_id: array_prodect[index]["prodect_id"],
                prodect_name: array_prodect[index]["prodect_name"],
                prodect_de: array_prodect[index]["prodect_de"],
                prodect_image: array_prodect[index]["prodect_image"],
                prodect_pric: array_prodect[index]["prodect_pric"],
              );
            }),
      ),
    );
  }
}

class singalprodct extends StatelessWidget {
  final prodect_id;
  final prodect_name;
  final prodect_image;
  final prodect_de;
  final prodect_pric;

  singalprodct({
    this.prodect_id,
    this.prodect_image,
    this.prodect_name,
    this.prodect_de,
    this.prodect_pric,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //     context, MaterialPageRoute(builder: (context) => prodect()));
      },
      child: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
            new Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.width / 2 - 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(prodect_image),
                ),
              ),
            ),
            Expanded(
              child: new Text(
                prodect_name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            new Row(
              children: [
                Text(prodect_pric),
                Expanded(
                  child: Text(""),
                ),
                Text("2"),
                Icon(
                  Icons.star_border,
                  color: Colors.yellow,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
