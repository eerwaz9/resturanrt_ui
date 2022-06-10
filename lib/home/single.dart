import 'package:flutter/material.dart';

class single extends StatelessWidget {
  final cat_id;
  final cat_name;
  final cat_image;

  single({this.cat_id, this.cat_image, this.cat_name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5, left: 7),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.red[100],
            ),
            child: Image.asset(cat_image),
          ),
          Text(
            cat_name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
