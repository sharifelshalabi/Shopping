import 'package:flutter/material.dart';

class Spalsh extends StatefulWidget {
  @override
  _SpalshState createState() => _SpalshState();
}

class _SpalshState extends State<Spalsh> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: h * 0.1,
            ),
            Container(
              height: h * 0.1,
              child: Text(
                'E-Commerce\n',
                style: TextStyle(
                    color: Color(0xffff4d4d),
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              alignment: Alignment.center,
            ),
            Container(
                height: h * 0.15,
                child: RichText(
                  text: TextSpan(
                    text: "Welcome to Our App , ",
                    style: TextStyle(color: Colors.grey[600], fontSize: 20),
                    children: [
                      TextSpan(
                          text: "Let's Shop",
                          style: TextStyle(color: Color(0xffff4d4d))),
                    ],
                  ),
                )),
            Container(
              width: 240.0,
              height: h * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/1.png"))),
            ),
            SizedBox(
              height: h * 0.2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: w * 0.25),
              child: LinearProgressIndicator(
                backgroundColor: Color(0xffff4d4d),
                minHeight: 6,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white54),
              ),
            )
          ],
        ),
      ),
    );
  }
}
