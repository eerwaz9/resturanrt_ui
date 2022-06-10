import 'package:flutter/material.dart';
import 'package:project/Theem/theem.dart';

class profil extends StatefulWidget {
  @override
  _profilState createState() => _profilState();
}

class _profilState extends State<profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.cyan[100],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.indigo,
            size: 20,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          margin:
              EdgeInsets.only(top: 10.0, right: 25.0, bottom: 10.0, left: 20.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            "تعديل الملف الشخصي",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 25,
                                color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 55,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 30, top: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "ادخل الإيــميــل",
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.black),
                            labelText: "الايــــميــل",
                            labelStyle:
                                TextStyle(fontSize: 20, color: Colors.black),
                            border: InputBorder.none),
                        // validator: (val) {
                        //   if ((val.isEmpty) &&
                        //       !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                        //           .hasMatch(val)) {
                        //     return "ادخل الايميل ";
                        //   }
                        //   return null;
                        // },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 55,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 30, top: 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "ادخل كلـمــة الــسر",
                            labelText: "كلمــة الــسر",
                            labelStyle:
                                TextStyle(fontSize: 20, color: Colors.black),
                            border: InputBorder.none),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: theem.seven),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              " حــفــظ",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
