import 'package:flutter/material.dart';
class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total : ",
                style: TextStyle(color: Colors.blue,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                ),
                ),
                Text("\$150",
                style: TextStyle(fontWeight: FontWeight.bold,
                color: Colors.red,fontSize: 15),
                )
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 25,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "Check Out",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}