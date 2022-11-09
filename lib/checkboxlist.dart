import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp()   
  ));
}
class MyApp extends StatefulWidget {
 

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool android = false;

  bool flutter = false;

  bool ios = false;

  bool php = false;

  bool node = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        
        title: Text('CheckBox ListTile Demo',),
          ),

      body: Column(

        children: [
       CheckboxListTile(value: android, 
          onChanged: (bool ? val){
            setState((){
              android = val!;
            });
          },
        activeColor: Colors.black,   
        title:Text("Android") ,  
        secondary: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Android_robot.svg/1745px-Android_robot.svg.png',),
              ), 
          ),
          CheckboxListTile(value: flutter, 
          onChanged: (bool ?val){
            setState((){
              flutter = val!;
            });
          },
        activeColor: Colors.black,   
        title:Text("Flutter") ,  
        secondary: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',),
              ), 
          ),
          CheckboxListTile(value: ios, 
          onChanged: (bool ? val){
            setState((){
              ios = val!;
            });
          },
        activeColor: Colors.black,   
        title:Text("IOS") ,  
        secondary: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://www.shutterstock.com/image-vector/humpolec-czech-republic-january-14-600w-2111305004.jpg',),
              ), 
          ),
          CheckboxListTile(value: php, 
          onChanged: (bool ? val){
            setState((){
              php = val!;
            });
          },
        activeColor: Colors.black,   
        title:Text("PHP") ,  
        secondary: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://www.shutterstock.com/image-photo/php-inscription-against-laptop-code-600w-1852808164.jpg',),
              ), 
          ),
          CheckboxListTile(value: node, 
          onChanged: (bool ? val){
            setState((){
              node = val!;
            });
          },
        activeColor: Colors.black,   
        title:Text("Node") ,  
        secondary: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage('https://miro.medium.com/max/800/1*bc9pmTiyKR0WNPka2w3e0Q.png',),
              ), 
          ), 
        ],
      ),    
    );
  }
}

 
