import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project/prodect/prodect.dart';

class singalprodct extends StatelessWidget {
  final prodect_id;
  final prodect_name;
  final prodect_image;
  final prodect_de;
  singalprodct({
    this.prodect_id,
    this.prodect_image,
    this.prodect_name,
    this.prodect_de,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => prodect()));
      },
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(80),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(prodect_image), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            Text(
              prodect_name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              prodect_de,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
