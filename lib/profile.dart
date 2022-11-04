import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: profile()));
}

class profile extends StatelessWidget{
  final double heightco = 400;
  final double profileheight=200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("PROFILE"),
          actions:[ 
          IconButton(onPressed: (() {
                      }),
            icon: const Icon(Icons.menu,),padding: const EdgeInsets.only(right: 50),
          ),
          IconButton(onPressed: (() {
                      }),
            icon: const Icon(Icons.more_vert),padding: const EdgeInsets.only(left: 40),
          ),
          ],
        ),
      body: ListView(
        padding: EdgeInsets.zero,
        children:<Widget> [
          buildTOP(),  
          buildcontent(),        
        ],
      ),
    );
  }
    
  Widget buildTOP() {  
    final bottom = profileheight / 2;
    final top = heightco-profileheight / 2;
       return Stack(
        clipBehavior: Clip.none,
      alignment:Alignment.center,
      children:[ 
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
              ),
          
      Positioned(
        top:top,
        child: buildProfile(),
    ),
      ],
    );
    
  }
    
   Widget buildCoverImage()=>Container (
          color: Colors.green,
          child:Image.network("https://t3.ftcdn.net/jpg/03/41/52/70/240_F_341527061_N39UNqSXBGJ5Ozv5AlzoNxpBaUZ7Svzf.jpg",
          width: double.infinity,
          height: heightco,
          fit: BoxFit.cover,
          ),
          );
         
    Widget buildProfile()=> CircleAvatar(
        radius: profileheight / 2,
      backgroundColor: Colors.green,
      backgroundImage: NetworkImage('https://www.shutterstock.com/image-photo/pretty-smiling-joyfully-female-fair-600w-776697943.jpg'),
    );        
   Widget buildcontent()=>Column(
         // ignore: prefer_const_literals_to_create_immutables
         children:[
          const SizedBox(height: 9),
          const Text('ANNA DAVID', style: TextStyle(fontSize:45,color: Colors.black)),
          const SizedBox(height: 8),
          Text('Writer', style: TextStyle(fontSize: 30,color: Colors.blue )
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [CircleAvatar(backgroundColor: Colors.red,radius:20 ,
            child:IconButton(onPressed: (() {
                      }),
            icon: const Icon(Icons.message),color: Colors.white,iconSize: 20,
          ),),
         CircleAvatar( backgroundColor: Colors.blue,radius:20 ,
          child :IconButton(onPressed: (() {
                      }),
            icon: const Icon(Icons.add),color: Colors.white,iconSize:20 ,
          ),),
        ],
       
         ),
                    
         ]
              );
      
}