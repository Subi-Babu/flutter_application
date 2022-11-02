import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
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
      appBar: AppBar(title: Text("Grid"),),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView(children: [
          Card(
            child: Container(height: 200,width:200,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.brown,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.home,size: 10,color: Colors.white,),
              Text("Home",style: TextStyle(color: Colors.white,fontSize: 10),)
            ],),
            ),
          ),
          Card(
            child: Container(height: 200,width:200,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.red,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.notifications,size: 10,color: Colors.white,),
              Text("Notifications",style: TextStyle(color: Colors.white,fontSize: 10),)
            ],),
            ),
          ),
          Card(
            child: Container(height: 200,width:200,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.purple,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.facebook,size: 10,color: Colors.white,),
              Text("Facebook",style: TextStyle(color: Colors.white,fontSize: 10),)
            ],),
            ),
          ),
         Card(             
           child: Container(height: 200,width:200,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.yellow,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.search,size: 10,color: Colors.white,),
              Text("Search",style: TextStyle(color: Colors.white,fontSize: 10),)
            ],),
            ),
         ),
        Card(
            child: Container(height: 200,width:200,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.pink,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.phone,size: 10,color: Colors.white,),
              Text("Phone",style: TextStyle(color: Colors.white,fontSize: 10),)
            ],),
            ),
          ),
          Card(              
            child: Container(height: 20,width:20,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.green,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.settings,size: 10,color: Colors.white,),
              Text("Settings",style: TextStyle(color: Colors.white,fontSize: 10),)
            ],),
            ),
          ),
          Card(
            child: Container(height: 20,width:20,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.blue,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.alarm,size: 10,color: Colors.white,),
              Text("Alaram",style: TextStyle(color: Colors.white,fontSize: 10),)
            ],),
            ),
          ),
          Card(              
            child: Container(height: 20,width:20,decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.grey,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(Icons.camera,size: 10,
              color: Colors.white,),
              Text("Camera",style: TextStyle(color: Colors.white,fontSize: 10),)
            ],),
            ),
          ),
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
        ),
      ),),
    );
  }
}
