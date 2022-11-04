import 'package:flutter/material.dart';
import 'dart:core';

void main(){
  runApp(MaterialApp(home: home2()));
}
class home2 extends StatelessWidget {

   List<String> item = ["USA","CANADA","LONDON","FRANCE",]; 

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text("MOVIES")),
      body: Container( 
        child:GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2
          ), 

          itemCount: item.length,
          itemBuilder: ( cntx , index) {
            return GridTile(
              child:Ink.image(image: NetworkImage('https://t4.ftcdn.net/jpg/05/09/99/49/240_F_509994953_MtCUy1bT77aVuQ5wlfvWRsaFgEnxAgi1.jpg'),
              fit: BoxFit.cover,
              ) ,
              
                      );
          },            ),  ),   );
  }}