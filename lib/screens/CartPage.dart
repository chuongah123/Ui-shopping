import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/CartAppBar.dart';
import 'package:flutter_application_1/widgets/CartBottomNavBar.dart';
import 'package:flutter_application_1/widgets/Cartitemsamples.dart';
class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CartAppBar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 25),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 250, 250),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),

              )
            ),
            child: Column(children: [
              Cartitemsamples(),
              Container(
                margin: EdgeInsets.symmetric(vertical:20,horizontal: 15),
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      
                    ),
                    child: Icon(Icons.add,color: Colors.white,),

                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Add Coupon Code",
                    style: TextStyle(
                      color: Colors.blue,fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  )
                ],)

              )
            ],),

          )
        ],
      ),bottomNavigationBar: CartBottomNavBar(),

    );
  }
}