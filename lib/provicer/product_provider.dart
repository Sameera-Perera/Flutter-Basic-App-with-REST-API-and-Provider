import 'package:flutter/material.dart';
import 'package:flutter_api_example/service/product_service.dart';

import '../model/product.dart';

class ProductProvider with ChangeNotifier {
  List<Product> _products = [];
  bool _isLoading = false;

  List<Product> get products => _products;
  bool get isLoading => _isLoading;

  void fetchProducts() async {
    _isLoading = true;
    notifyListeners();

    try {
      _products = await ProductService().fetchProducts();
    } catch (e) {
      print("Error fetching products: $e");
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
