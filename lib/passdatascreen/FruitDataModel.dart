// ignore: file_names
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/passdatascreen/style.dart';


class ProductListScreen extends StatelessWidget {
 

   void _goToSingle(context, productId) {
    Navigator.of(context).pushNamed("single-product", arguments: productId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FRUITS"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: dummyProducts.map((Product) {
          return TextButton(
              onPressed: () => _goToSingle(context, Product["id"]),
              child: Text(Product["name"]));
        }).toList(),
      ),
    );
  }
}