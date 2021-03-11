import 'package:flutter/material.dart';


class MyListTile extends StatelessWidget {
  final Widget myicon;
  final String text;
  final Function onTap;
  const MyListTile({Key key, this.myicon,this.text,this.onTap});
   @override
   Widget build(BuildContext context) {
     return InkWell(
       onTap:
         onTap,

       child: ListTile(
         leading: myicon,
         title: Text(text),
       ),
     );
   }
 }
