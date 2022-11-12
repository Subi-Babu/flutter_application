import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Categery extends StatelessWidget {
  final Color bgcolor;
  final String catname;
  final IconData iconData;

  Categery(
      {required this.iconData, required this.catname, required this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData, color: Colors.white,),
            Text(catname, style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
