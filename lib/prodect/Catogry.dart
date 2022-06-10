import 'package:flutter/material.dart';
import 'package:project/prodect/subcatogry.dart';

class catogry extends StatefulWidget {
  const catogry({Key? key}) : super(key: key);

  @override
  _catogryState createState() => _catogryState();
}

class _catogryState extends State<catogry> {
  var array_cat = [
    {
      "cat_id": "1",
      "cat_name": "الفطائر",
      "cat_image": "images/category/cat1.png",
    },
    {
      "cat_id": "2",
      "cat_name": "مخضرية",
      "cat_image": "images/category/cat2.png",
    },
    {
      "cat_id": "3",
      "cat_name": "بقوليات",
      "cat_image": "images/category/cat3.png",
    },
    {
      "cat_id": "4",
      "cat_name": "مشاوي",
      "cat_image": "images/category/cat4.png",
    },
    {
      "cat_id": "5",
      "cat_name": "بتزا",
      "cat_image": "images/category/cat5.png",
    },
    {
      "cat_id": "6",
      "cat_name": "المشروبات",
      "cat_image": "images/category/cat6.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "قائمة الماكولات",
          style: TextStyle(color: Colors.purple),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: ListView.builder(
            itemCount: array_cat.length,
            itemBuilder: (BuildContext context, int index) {
              return single(
                  cat_id: array_cat[index]["cat_id"],
                  cat_image: array_cat[index]["cat_image"],
                  cat_name: array_cat[index]["cat_name"]);
            }),
      ),
    );
  }
}

class single extends StatelessWidget {
  final cat_id;
  final cat_name;
  final cat_image;

  single({this.cat_id, this.cat_image, this.cat_name});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (builder) => subcatogry(
                            cat_name: cat_name,
                            cat_id: cat_id,
                          )));
            },
            child: ListTile(
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.grey[100],
                ),
                child: Image.asset(cat_image),
              ),
              title: Text(
                cat_name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
