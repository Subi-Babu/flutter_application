import 'dart:core';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: movies()));
}
class movies extends StatelessWidget {

  List<String> m = ["Avengers:End Game","Dora and the lost city of God","Captain Marvel","Us"];
  List<String> moviedetail = ["Action,Adventurse","","Action,Sci-Fi","Action,Thriller"]; 
  List<int> year = [2019,2019,2020,2018];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(title: Text("MOVIES")),
      body: Container( 
        child: ListView.builder(
          itemCount: m.length,
          itemBuilder: ( cntx , index) {
            return ListTile(
              leading: CircleAvatar(
              child:Text(m[index][0]),),                
                    title: Text(m[index]),
                    subtitle: Text(moviedetail[index]),
                    trailing: Text(year[index].toString()),
                      );
          }            ),  ),   );
  }}