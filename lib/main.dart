import 'package:flutter/material.dart';
import 'package:flutter_api_example/provicer/auth_provider.dart';
import 'package:flutter_api_example/provicer/product_provider.dart';
import 'package:flutter_api_example/screen/login_screen.dart';
import 'package:flutter_api_example/screen/product_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthProvider()),
        ChangeNotifierProvider(create: (context) => ProductProvider()..fetchProducts()),
      ],
      child: Consumer<AuthProvider>(
        builder: (context, authProvider, child) {
          return MaterialApp(
            title: 'Fake Store API Example',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: authProvider.isAuthenticated
                ? const ProductListScreen()
                : const LoginScreen(),
          );
        },
      ),
    );
  }
}
