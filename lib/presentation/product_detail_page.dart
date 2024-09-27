import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:testb6/application/cart_provider.dart';
import 'package:testb6/data/product_list.dart';
import 'package:testb6/domain/product.dart';
import 'package:testb6/presentation/cart_page.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(product.name.toString()),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CartPage();
                  },
                ),
              ),
            )
          ],
        ),
        body: Consumer<CartProvider>(builder: (context, cartProvider, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(product.description.toString()),
                Text(product.price.toString()),
                Text(product.availability.toString()),
                ElevatedButton(
                  onPressed: product.availability > 0
                      ? () {
                          cartProvider.addToCart(product);
                        }
                      : null,
                  child: const Text("Warenkorb hinzufügen"),
                )
              ],
            ),
          );
        }));
  }
}
