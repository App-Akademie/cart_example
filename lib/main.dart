import 'package:flutter/widgets.dart';
import "package:flutter/material.dart";
import 'package:testb6/presentation/product_view_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductViewPage(),
    );
  }
}
