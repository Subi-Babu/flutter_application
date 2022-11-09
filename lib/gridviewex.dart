import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App Learning',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
     @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("GRID VIEW"),
        ),
        body: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10
          ),
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) {
           return GestureDetector(
            onTap: () {
              
            },
             child:Card(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
                    image:DecorationImage(image: NetworkImage("https://www.shutterstock.com/image-photo/vancouver-skyline-reflection-sunset-600w-417849331.jpg"))
                    ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      color: Colors.white,
                      child: Text('CANADA'),
                    )
                ],
              ),
             ),
              ); 
          },        
         )
    );
  }

}











/*// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Grid ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
 
  @override
    State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grid Vieww"),),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(10),
        // ignore: sort_child_properties_last
        child: GridView(children: [
          Card(
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
             Image.asset(
                "assets/images/can.jpeg",
                    ),
              Text("CANADA",style: TextStyle(color: Colors.black,fontSize: 10),)
            ],),
            
          ),
          Card(
            child: Container(height: 20,width:20,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.red,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.asset(
                "assets/images/france.jpeg",
                    ),
              Text("FRANCE",style: TextStyle(color: Colors.white,fontSize: 10),)
            ],),
            ),
          ),
          Card(
            child: Container(height: 20,width:20,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.purple,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
             Image.asset(
                "assets/images/lon.jpeg",
                    ),
              Text("LONDON",style: TextStyle(color: Colors.white,fontSize: 10),)
            ],),
            ),
          ),
         Card(             
           child: Container(height: 20,width:20,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.yellow,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset(
                "assets/images/usa.jpeg",
                    ),
              Text("USA",textDirection:TextDirection.ltr ,style: TextStyle(color: Colors.white,fontSize: 10,),)
            ],),
            ),
         ),
        
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
        ),
      ),),
    );
  }
}
*/