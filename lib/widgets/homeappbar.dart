import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
class Homeappbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF896CE7),
            ),
                  Padding(padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    "TTC SHOP",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Color(0xD60A03C9),
                    ),
                  ),
                  ),
                  Spacer(),
                 badges.Badge(
                  position: badges.BadgePosition.topEnd(top: -10, end: -12),
                  showBadge: true,
                  ignorePointer: false, 
                   badgeContent: Text('3'),
                    badgeAnimation: badges.BadgeAnimation.slide(
                 animationDuration: Duration(seconds: 1),
                 colorChangeAnimationDuration: Duration(seconds: 1),
                 loopAnimation: false,
                  curve: Curves.fastOutSlowIn,
                  colorChangeAnimationCurve: Curves.easeInCubic,
                 ),
                  child:InkWell(
                     onTap: () {
                      Navigator.pushNamed(context, "cartPage");
                     },
                    child: Icon(Icons.shopping_bag_outlined,size: 32,color: Color(0xD60A03C9) ,),
                  
                 
                  )
                 
                 )
                ],),
              );
  }
}