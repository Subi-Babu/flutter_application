import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Staggered2/place.dart';





class placeitem extends StatelessWidget{
  final place Place;

  placeitem(this.Place);

  @override
  Widget build(BuildContext context) {
  
  return Container(
    alignment: Alignment.bottomLeft,
   
    width: 240,
    decoration: BoxDecoration(
      image: DecorationImage(image: 
      NetworkImage(Place.img),
      fit:BoxFit.cover,)
    ),
    child:Padding(padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
     child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children:[
           Text(Place.title,style: TextStyle(color: Colors.white,fontSize: 16),),
           Text(Place.title,style: TextStyle(color: Colors.white,fontSize: 14),),
      ],
     ),
    
    ),

  );
  }

}

