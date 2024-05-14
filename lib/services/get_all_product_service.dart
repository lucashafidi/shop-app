import 'dart:convert';

import 'package:flutter_store_free/helper/api.dart';
import 'package:flutter_store_free/models/product_model.dart';
import 'package:http/http.dart';


class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}
