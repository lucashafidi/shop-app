import 'package:flutter/material.dart';
import 'package:flutter_store_free/screens/home_page.dart';
import 'package:flutter_store_free/screens/update_product_page.dart';
void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id : (context) => HomePage(),
        UpdateProductPage.id : (context) => UpdateProductPage(),
        
      },
      initialRoute: HomePage.id,
    );
  }
}
