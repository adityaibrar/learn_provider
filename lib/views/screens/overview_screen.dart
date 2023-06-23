// ignore_for_file: prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';
import '../../models/product.dart';
import '../../views/widgets/product_item.dart';

class ProductOverviewScreen extends StatelessWidget {
  static const String routeName = '/product';

  final List<Product> loadedProducts = List.generate(26, (index) {
    return Product(
        id: "id_${index + 1}",
        title: "Product${index + 1}",
        description: "description${index + 1}",
        price: 10 + Random().nextInt(100).toDouble(),
        imageUrl: 'https://picsum.photos/id/$index/200/300');
  });

  ProductOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shop"),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: loadedProducts.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (ctx, i) => ProductItem(loadedProducts[i].id!,
            loadedProducts[i].title!, loadedProducts[i].imageUrl!),
      ),
    );
  }
}
