import 'package:flutter/material.dart';
import 'homepage.dart';
void main() {
  runApp(myapp());
}

// ignore: camel_case_types
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}