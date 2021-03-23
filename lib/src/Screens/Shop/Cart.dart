import 'package:flutter/material.dart';


import '../../../constants.dart';
class MyCard extends StatelessWidget {
  final Widget firsticon;
  final String text;

  const MyCard({Key key, this.firsticon, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   Card(
      child: Row(
        children: [
          firsticon,
          Text(text,style: kCardTextStyle,),
        ],
      ),

    );
  }
}
