import 'package:flutter/material.dart';
import 'productlist.dart';
import 'singleproduct.dart';

void main() {
    runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  ProductListScreen(),
      routes: {
       "single-product": (context) =>  SingleProductScreen(),
      },
    );
  }
}