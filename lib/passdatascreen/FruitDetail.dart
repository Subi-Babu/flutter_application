import 'package:flutter/material.dart';
import 'style.dart';

class SingleProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final productId = ModalRoute.of(context)?.settings.arguments;

    final product = dummyProducts.firstWhere((e) => e["id"] == productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(product["name"]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
                Text(
            "Name: ${product['name']}",
            style: const TextStyle(fontSize: 30, color: Colors.purple),
          ),
          Text(
            "Price: ${product['price'].toString()}",
            style: const TextStyle(fontSize: 20, color: Colors.red),
          ),
        
          Text("Description ${product['description']}"),

           Image.network(product["image"]),
        ]),

      ),
    );
  }
}