// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[ 
          
          Row(
            children: [
              SizedBox(height:50),
              Text("Type Your Location",
              style:TextStyle(color: Colors.white,fontSize: 15,),
              ), ],
          ),
                   Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10,),
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      decoration:BoxDecoration(color: Colors.grey,
                      borderRadius:BorderRadius.circular(15) ,
                      ),
                     child:InkWell(
                      onTap: (() {
                        
                      }),
                      child:Row(
                        children:[
                    Icon(Icons.search),
                  Text("Tokyo,Japan"),
                      ],
                      ),
                     ),
                    ),
                    ),
                   
                       ],
        ),
                     
          ],
          ),
         
      actions: [
        Icon(Icons.favorite,color: Colors.white,size: 25,),
        Icon(Icons.menu,color: Colors.white,size:25,)
      ],
      ),
      body: SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 10),
           child: Column(
            children:[
       
           SizedBox(height:20) ,
          // ignore: sized_box_for_whitespace
          Container(
            height: 100,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
              itemCount: listss.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(top: 5,bottom: 2,right: 5,left: 8),
                    height: 70,
                    width: 70,
                    color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.white,

                    ),
                    child: Image.asset(listss[index].img),
                        ),
                      
                      Text(listss[index].title),
                  ],
                );
              }),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Container(
                height: 200,
                margin: EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft:Radius.circular(10) ,
                    topRight:Radius.circular(10) ),
                  image: DecorationImage(image: NetworkImage("https://www.pexels.com/photo/black-and-grey-bedspread-on-bed-and-pillow-164595/"),
                  fit: BoxFit.cover
                  ),

                ),
              ),
             
              Text("Awesome room near Tokyo!!"),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(Icons.star,color: Colors.deepOrangeAccent,),
               Text("5",style: TextStyle(color: Colors.deepOrangeAccent),),
               Text("(250 reviews)"),
               Spacer(),
               Text("\$25")
                ],

              )
            ],
            ),
          )
            ],
           ),
                     
        ),
         ),    
   
    
    
       );
           
  } 
}

// ignore: camel_case_types
class items
{
 String img;
 String title;
   items({
  required this.img,
  required this.title
  });
}  
List<items> listss = [
  items(img: "asstes/images/bed.png", title: "Hotel"),
  items(img: "asstes/images/restaurant.png", title: "Restaurant"),
  items(img: "asstes/images/coffee-cup.png", title: "Cafe"),  

];