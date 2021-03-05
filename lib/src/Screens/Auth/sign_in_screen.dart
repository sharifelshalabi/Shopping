import 'package:flutter/material.dart';

class SignInscreen extends StatefulWidget {
  @override
  _SignInscreenState createState() => _SignInscreenState();
}

class _SignInscreenState extends State<SignInscreen> {
  bool isSeen = true;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery
        .of(context)
        .size
        .height;
    var w = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: h,
                width: w,
                child: Stack(
                  children: [
                    Container(
                      height: h * 0.55,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/2.PNG"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: h * 0.09, left: w * 0.1),
                      child: Text(
                        'Welcome\n Back',
                        style: TextStyle(fontSize: 35, color: Colors.black),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: EdgeInsets.only(left: w * 0.1, right: w * 0.1),
                        height: h * 0.5,
                        width: w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24),
                                topRight: Radius.circular(24))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: h * 0.05),
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xffff4d4d),
                                    ),
                                  ),

                                  prefixIcon: Icon(Icons.person,color:  Color(0xffff4d4d),),
                                  hintText: 'Name',
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                      BorderSide(color: Colors.grey[300]))),
                            ),
                            SizedBox(height: h * 0.03),
                            TextFormField(
                              obscureText: isSeen,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffff4d4d),
                                  ),
                                ),
                                prefixIcon: Icon(
                                    Icons.lock, color: Color(0xffff4d4d),),
                                hintText: 'Password',
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isSeen = !isSeen;
                                    });
                                  },
                                  child: isSeen
                                      ? Icon(Icons.visibility_off,color:  Color(0xffff4d4d),)
                                      : Icon(Icons.remove_red_eye, color:  Color(0xffff4d4d),),
                                ),
                              ),
                            ),
                            SizedBox(height: h * 0.05),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(color: Color(0xffff4d4d)),
                                  ),
                                  onTap: () {
                                    print('siduhvsdkuj');
                                  },
                                ),
                                InkWell(
                                  child: Text('Sign up',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                  onTap: () {},
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: w * 0.15,
                        width: w * 0.15,
                        decoration: BoxDecoration(
                            color: Color(0xffcccccc), shape: BoxShape.circle),
                        child: Icon(
                          Icons.arrow_forward_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
