import 'dart:convert';

import 'package:flutter_store_free/helper/api.dart';
import 'package:http/http.dart' as http;


class AllCategoriesService {
  Future<List<dynamic>> getAllCateogires() async {
    
 List<dynamic> data =await Api().get(url: 'https://fakestoreapi.com/products/categories');
  
  return data;

  }
}
