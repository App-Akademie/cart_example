import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:testb6/data/product_list.dart';
import 'package:testb6/presentation/product_detail_page.dart';

class ProductViewPage extends StatelessWidget {
  const ProductViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(productList[index].name),
            subtitle: Text(productList[index].description),
            trailing: Text(productList[index].price.toString()),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetailPage(
                  product: productList[index],
                ),
              ),
            ),
          );
        },
        itemCount: productList.length,
      ),
    );
  }
}
