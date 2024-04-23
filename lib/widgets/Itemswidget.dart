import 'package:flutter/material.dart';
class Itemswidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for(int i=1;i<8;i++)
        Container(
          padding: EdgeInsets.only(left: 15,right: 15,top: 10),
          margin: EdgeInsets.symmetric(vertical: 8,horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration:BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                     ) ,
                     child: Text(
                      "49%",
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),
                     ),
                  ),
                  Icon(Icons.favorite_border,
                  color: Colors.red,)
                ],
                ),
                InkWell(
                  onTap: (){
                  Navigator.pushNamed(context, "itemPage");
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset("images/$i.png",height: 100,width: 100,),
                  ),
                ),
                Container(padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Product Title",
                   style: TextStyle(fontSize: 18,
                   fontWeight: FontWeight.bold,
                   color: Colors.black),
                ),
                ),
               Container(
                alignment: Alignment.centerLeft,
                child: Text("Write description of product",style: TextStyle(color: Color(0xFF042946),fontSize: 15),),
               ) ,
               Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
               child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("\$55",style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
               ),),
               Icon(Icons.shopping_cart_checkout,
               color: Colors.blue,),
            ],
          ),
        )
            ],
          ),   ),
      ],
    );
  }
}