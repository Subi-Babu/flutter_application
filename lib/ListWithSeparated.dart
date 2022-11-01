import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListWithSeparated(),));
}
class ListWithSeparated extends   StatelessWidget{

  var datas  = <String>['DATA 1','DATA 2','DATA 3'];
  var colors = <int>[600, 300, 100];
  var sepcol = [800,400,200];

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar:AppBar(title:Text("my list"),),
          body: ListView.separated(
              itemBuilder: (context, index){
                return Card(
                  color:Colors.green[colors[index]],
                  child: Text(datas[index]),
                );
              },
              separatorBuilder: (context, index){
                return Divider(thickness: 5, color: Colors.green[sepcol[index]],);
             //return Icon(Icons.ac_unit,color: Colors.red[sepcol[index]],);
              },
              itemCount: datas.length),
        );
    }

}