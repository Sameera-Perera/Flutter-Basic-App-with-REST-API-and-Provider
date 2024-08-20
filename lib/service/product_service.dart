import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/product.dart';

/// A service class responsible
/// for all product related operations.
class ProductService {
  final String baseUrl = 'https://fakestoreapi.com/products';

  /// Fetches all products from the API.
  /// Returns a list of [Product]s.
  /// Throws an exception if the API call fails.
  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
