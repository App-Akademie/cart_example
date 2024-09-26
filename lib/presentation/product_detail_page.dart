import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testb6/domain/product.dart';

class ProductDetailPage extends StatelessWidget {
  ProductDetailPage({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name.toString()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(product.description.toString()),
            Text(product.price.toString()),
            Text(product.availability.toString()),
            ElevatedButton(
              onPressed: product.availability > 0
                  ? () {
                      product.availability--;
                      //ScaffoldMessenger
                    }
                  : null,
              child: Text("Warenkorb hinzufügen"),
            )
          ],
        ),
      ),
    );
  }
}
