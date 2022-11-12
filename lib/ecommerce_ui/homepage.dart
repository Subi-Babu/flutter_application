// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
       return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
           Padding
               (padding: EdgeInsets.symmetric(
                horizontal: 20,  ),
           child: Row(
              children:  [
             Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(color: Colors.grey,
              borderRadius: BorderRadius.circular(15),              
              ),
              child: TextField(decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search Product",
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.mic),       
            )),
             ),
      Stack(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              color: Colors.grey,
              shape: BoxShape.circle, 
              
            
                ),
            
          ),
        ],
      )
            ],
            ),
           )
          ],
        )
      )
      ) ;   
  }


  
}






/*https://www.shutterstock.com/image-vector/smartphone-mobile-phone-isolated-realistic-600w-703670326.jpg
https://www.shutterstock.com/image-photo/collection-womens-summer-clothes-yellow-600w-403841710.jpg
https://www.shutterstock.com/image-vector/ecofriendly-textile-paper-reusable-bags-600w-1494594719.jpg
https://www.shutterstock.com/image-illustration/creative-recreational-toys-entertainment-theme-600w-1900326166.jpg
https://www.shutterstock.com/image-vector/vector-fitness-sneakers-shoes-training-600w-1272576460.jpg
*/