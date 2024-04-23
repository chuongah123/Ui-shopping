import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Categotieswidget.dart';
import 'package:flutter_application_1/widgets/Itemswidget.dart';
import 'package:flutter_application_1/widgets/homeappbar.dart';
class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Homeappbar(),
        Container(
          // height: 500,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Color(0xFFF5F8FA),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            )
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 50,
                    width: 300,
                    child: TextFormField(
                    decoration: InputDecoration(border: InputBorder.none,
                    hintText: "Search Here..."),
                    ),
                  ),
                  Spacer(),
                Icon(
                  Icons.camera_alt,
                 size: 27,
                  color: Color(0xFF2C0E63)),
                ],),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0x000808DE)
                  ),
                ),
          ),
          Categorieswidget(),
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
            child: Text(
              "Bell Selling",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0612BA),
              ),
            ),
          ),
          Itemswidget()
          ],
          ),
        )
      ],),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index){},
        height: 60,
        color: Color(0xFF0612BA),
        items: [
          Icon(Icons.home,
          size: 30,
          color: Colors.white,),
          Icon(CupertinoIcons.cart_fill,
          size: 30,
          color: Colors.white,),
          Icon(Icons.list,
          size: 30,
          color: Colors.white,),
        ],
      ),
    );
  }
}