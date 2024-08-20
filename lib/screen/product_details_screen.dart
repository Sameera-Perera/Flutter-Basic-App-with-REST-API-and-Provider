import 'package:flutter/material.dart';
import 'package:flutter_api_example/model/product.dart';
import 'package:provider/provider.dart';

import '../provicer/product_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // final product = Provider.of<ProductProvider>(context, listen: false)
    //     .findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Image.network(product.image)),
          const SizedBox(height: 16),
          Text(
            product.title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            '\$${product.price}',
            style: const TextStyle(fontSize: 20, color: Colors.green),
          ),
          const SizedBox(height: 16),
          Text(
            product.description,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
