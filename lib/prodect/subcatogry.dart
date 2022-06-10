import 'package:flutter/material.dart';

class subcatogry extends StatefulWidget {
  var cat_id;
  var cat_name;

  subcatogry({
    this.cat_name,
    this.cat_id,
  });

  @override
  _subcatogryState createState() => _subcatogryState();
}

class _subcatogryState extends State<subcatogry> {
  var array_cat = [
    {
      "cat_id": "1",
      "cat_name": "جمبري",
      "cat_image": "images/category/cat1.png",
      "cat_count": "10",
    },
    {
      "cat_id": "2",
      "cat_name": "غويزي",
      "cat_image": "images/category/cat2.png",
      "cat_count": "15",
    },
    {
      "cat_id": "3",
      "cat_name": "ديرك",
      "cat_image": "images/category/cat3.png",
      "cat_count": "5",
    },
    {
      "cat_id": "4",
      "cat_name": "جحش",
      "cat_image": "images/category/cat4.png",
      "cat_count": "20",
    },
    {
      "cat_id": "5",
      "cat_name": "باغة",
      "cat_image": "images/category/cat5.png",
      "cat_count": "23",
    },
    {
      "cat_id": "6",
      "cat_name": "حبار",
      "cat_image": "images/category/cat6.png",
      "cat_count": "30",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          widget.cat_name,
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
                cat_name: array_cat[index]["cat_name"],
                cat_count: array_cat[index]["cat_count"],
              );
            }),
      ),
    );
  }
}

class single extends StatelessWidget {
  final cat_id;
  final cat_name;
  final cat_image;
  var cat_count;

  single({this.cat_id, this.cat_image, this.cat_name, this.cat_count});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: ListTile(
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.red[100],
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
              subtitle: Text(
                cat_count,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
