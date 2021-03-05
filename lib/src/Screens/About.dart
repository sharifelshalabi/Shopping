import 'package:thefinalproject/constants.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "About",
            style: kAppbarSizeText,
          ),
        ),
        body: Column(
          children: [
            Card(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(15),
                    child: Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.blue,radius: 30,),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("khraa",style: kCardTextStyle,),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(15),
                    child: Row(
                      children: [
                       IconButton(icon: Icon(Icons.info), onPressed: (){}),

                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Text("khraa",style: kCardTextStyle,),
                              Text("khraa",style: kCardTextStyle,),
                            ],
                          )
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.all(15),
                    child: Row(
                      children: [
                       IconButton(icon: Icon(Icons.share), onPressed: (){}),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("khraa",style: kCardTextStyle,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
