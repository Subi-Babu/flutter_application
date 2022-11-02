import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListWithSeparated(),));
}
class ListWithSeparated extends   StatelessWidget{

  var datas  = <String>['January','February','March','April','May','June','July'];
  var colors = <int>[600, 300, 100,111,222,444,];
  var sepcol = [800,400,200,200,200];

  @override
  Widget build(BuildContext context) {
        return Scaffold(
          appBar:AppBar(title:Text(""),),
          body: ListView.separated(
              itemBuilder: (context, index){
                return Card(
                  color:Colors.green[colors[index]],
                  child: Text(datas[index]),
                );
              },
              separatorBuilder: (context, index){
                return Divider(thickness: 5, color: Colors.green[sepcol[index]],);
              },
              itemCount: datas.length),
        );
    }

}