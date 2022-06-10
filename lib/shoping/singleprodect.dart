import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class singleprodect extends StatelessWidget {
  final pro_id;
  final pro_name;
  final pro_image;
  final pro_pric;
  final pro_pqt;
  singleprodect(
      {this.pro_id,
      this.pro_image,
      this.pro_name,
      this.pro_pric,
      this.pro_pqt});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.cancel,
              color: Colors.red,
              size: 30,
            ),
          ),
          Container(
            child: ListTile(
              title: Text(
                pro_name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              subtitle: Text(pro_pric),
              leading: Container(
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(pro_image),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              trailing: Container(
                width: 70,
                child: Row(
                  children: [
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: FaIcon(
                          FontAwesomeIcons.minus,
                          color: Colors.white,
                          size: 18,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        pro_pqt,
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    GestureDetector(
                      child: Container(
                        padding: EdgeInsets.all(5),
                        child: FaIcon(
                          FontAwesomeIcons.plus,
                          color: Colors.white,
                          size: 18,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
