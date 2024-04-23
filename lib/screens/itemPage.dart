
import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/Itemappbar.dart';
import 'package:flutter_application_1/widgets/itembottomnavbar.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class itemPage extends StatelessWidget {
  List<Color> clr=[
    Colors.red,Colors.white,Colors.green,Colors.grey,Colors.blue,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1D7D7),
      body: ListView(
        children: [
          Itemappbar(),
          Padding(padding: EdgeInsets.all(16),
          child: Image.asset("images/1.png",height: 300,),
          ),
          Arc(
            edge: Edge.TOP,
            height: 30,
            arcType: ArcType.CONVEY,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 50,bottom: 20),
                  child: Row(
                    children: [
                      Text('Product Title',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.blue),)
                    ],
                  ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 5,bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemSize: 20,
                        itemBuilder: (context,_)=>Icon(Icons.favorite,color: Colors.red,), onRatingUpdate: (index){},),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow:[ BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),

                                )]
                              ),
                              child: Icon(CupertinoIcons.minus,
                              size: 18,
                              
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              child: Text('01',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow:[ BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),

                                )]
                              ),
                              child: Icon(CupertinoIcons.plus,
                              size: 18,
                              ),)
                          ],
                        )
                    ],
                  ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text('This is more detailed description of the product. You can write here more about the product. This is lengthy description',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 17,color: Colors.blue),
                  ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text('Size:',
                      style: TextStyle(fontSize: 18,color: Colors.blue,
                      fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: 10,),
                      Row(
                        
                        children: [
                          for(int i=5;i<10;i++)
                          Container(
                            height: 30,width: 30,
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                )
                              ] 
                            ),
                            child: Text(i.toString(),style: TextStyle(fontSize: 18,color: Colors.blue,fontWeight: FontWeight.bold,),
                          ))
                        ],
                      )
                    ],
                  ),),
                   Padding(padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      Text('Color:',
                      style: TextStyle(fontSize: 18,color: Colors.blue,
                      fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: 10,),
                      Row(
                        
                        children: [
                          for(int i=0;i<5;i++)
                          Container(
                            height: 30,width: 30,
                            alignment: Alignment.center,
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: clr[i],
                              borderRadius: BorderRadius.circular(30),
                              boxShadow:[
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 8,
                                )
                              ] 
                            ),
                          )
                        ],
                      )
                    ],
                  ),)
                ],
              ),
              ),
            ),

          ) 
        ],
        
      ),
      bottomNavigationBar: itembottomnavbar(),
    );
  }
}