import 'package:flutter/material.dart';
import 'package:thefinalproject/src/Screens/Auth/Login.dart';

void main() {
  runApp(Shop());
}
class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
