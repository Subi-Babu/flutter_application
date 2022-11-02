import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyStack()));
}
class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Stack"),
          actions:[ 
          Icon(Icons.favorite),
          Icon(Icons.more_vert)
          ],
        ),
        body: Stack(
          children: [
            Image.network(
                'https://as2.ftcdn.net/v2/jpg/05/07/26/29/1000_F_507262985_xZxDLJaw4VYGuJY9HNryI7l066PDfDEW.jpg',
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover),
            Positioned(
              //  the text inside the Stack widget
              bottom: 10,
              right: 10,

              child: Container(
                //create a black box that wraps the white text so that the user can read the text even when the image is white
                width: 300,
                color: Colors.black54,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'GOOD MORNING',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}/*end  https://t4.ftcdn.net/jpg/05/09/99/49/240_F_509994953_MtCUy1bT77aVuQ5wlfvWRsaFgEnxAgi1.jpg*/
/*canadahttps://t3.ftcdn.net/jpg/03/41/52/70/240_F_341527061_N39UNqSXBGJ5Ozv5AlzoNxpBaUZ7Svzf.jpg*/
/*france https://as1.ftcdn.net/v2/jpg/01/79/38/88/1000_F_179388879_WuKEOzfV8qJdFLqnKvZ97Rk2km3SxQjK.jpg */
