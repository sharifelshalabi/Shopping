// import 'package:dio/dio.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:thefinalproject/src/models/product.dart';
// import 'package:thefinalproject/src/models/products.dart';
//
// void main() {
//   test('asfsd', () async {
//     final dio  = Dio();
//     final response =  await dio.get('https://fakestoreapi.herokuapp.com/products');
//     //print(response);
//     final List<Product> products =  (response.data as List).map((e) => Product.fromJson(e)).toList();
//      print(products.first.category);
//   });
// }
//

// import 'package:dio/dio.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:thefinalproject/Custom_Widgets.dart';
//
// void main(){
//   test('asdfsa', () async{
//     final dio = Dio();
//     final response = await dio.get('https://fakestoreapi.herokuapp.com/products');
//     print(response.data.toString());
//
//   });
// }

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  test('sdfds', () async{
    final dio = Dio();
    final response = await dio.get('https://fakestoreapi.herokuapp.com/products');
   // print(response.data.toString());
  //  print(response.headers.toString());
    print(response.statusMessage.toString());
    print(response.data.toString());
    return response;

  });
}
