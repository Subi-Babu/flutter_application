// ignore_for_file: prefer_const_constructors_in_immutables

import "package:flutter/material.dart";

// ignore: camel_case_types
class other extends StatelessWidget{

  final String pageTextChanged;

  other(this.pageTextChanged);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(pageTextChanged),),
      body: Center(
        child: Text(pageTextChanged),
      ),
    );
  }


}
