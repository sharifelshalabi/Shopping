import 'package:flutter/material.dart';
import 'package:thefinalproject/src/Screens/About.dart';
import 'package:thefinalproject/src/Screens/Auth/Confirmation.dart';
import 'package:thefinalproject/src/Screens/Auth/Forget_password.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:thefinalproject/src/Screens/Auth/Register.dart';
import 'package:thefinalproject/src/Screens/Auth/sign_in_screen.dart';
import 'package:thefinalproject/src/Screens/Settings/Settings.dart';
import 'package:thefinalproject/src/Screens/Shop/Category.dart';
import 'package:thefinalproject/src/Screens/splash_screen.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xffff4d4d),
    statusBarBrightness: Brightness.light,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((val) {
    runApp(Shop());
  });
}

class Shop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Settings(),
        '/second': (context) => Signup(),
        '/third': (context) => PinCodeVerificationScreen('rfsber'),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: PinCodeVerificationScreen(
//           "+8801376221100"), // a random number, please don't call xD
//     );
//   }
// }
//
// class PinCodeVerificationScreen extends StatefulWidget {
//   final String phoneNumber;
//
//   PinCodeVerificationScreen(this.phoneNumber);
//
//   @override
//   _PinCodeVerificationScreenState createState() =>
//       _PinCodeVerificationScreenState();
// }
//
// class _PinCodeVerificationScreenState extends State<PinCodeVerificationScreen> {
//   var onTapRecognizer;
//
//   TextEditingController textEditingController = TextEditingController();
//   // ..text = "123456";
//
//   StreamController<ErrorAnimationType> errorController;
//
//   bool hasError = false;
//   String currentText = "";
//   final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
//   final formKey = GlobalKey<FormState>();
//
//   @override
//   void initState() {
//     onTapRecognizer = TapGestureRecognizer()
//       ..onTap = () {
//         Navigator.pop(context);
//       };
//     errorController = StreamController<ErrorAnimationType>();
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     errorController.close();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue.shade50,
//       key: scaffoldKey,
//       body: GestureDetector(
//         onTap: () {},
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           child: ListView(
//             children: <Widget>[
//               SizedBox(height: 30),
//               // Container(
//               //   height: MediaQuery.of(context).size.height / 3,
//               //   child: FlareActor(
//               //     "assets/otp.flr",
//               //     animation: "otp",
//               //     fit: BoxFit.fitHeight,
//               //     alignment: Alignment.center,
//               //   ),
//               // ),
//               SizedBox(height: 8),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 8.0),
//                 child: Text(
//                   'Phone Number Verification',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               Padding(
//                 padding:
//                 const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
//                 child: RichText(
//                   text: TextSpan(
//                       text: "Enter the code sent to ",
//                       children: [
//                         TextSpan(
//                             text: widget.phoneNumber,
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 15)),
//                       ],
//                       style: TextStyle(color: Colors.black54, fontSize: 15)),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Form(
//                 key: formKey,
//                 child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         vertical: 8.0, horizontal: 30),
//                     child: PinCodeTextField(
//                       appContext: context,
//                       pastedTextStyle: TextStyle(
//                         color: Colors.green.shade600,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       length: 6,
//                       obscureText: false,
//                       obscuringCharacter: '*',
//                       animationType: AnimationType.fade,
//                       validator: (v) {
//                         if (v.length < 3) {
//                           return "I'm from validator";
//                         } else {
//                           return null;
//                         }
//                       },
//                       pinTheme: PinTheme(
//                         shape: PinCodeFieldShape.box,
//                         borderRadius: BorderRadius.circular(5),
//                         fieldHeight: 60,
//                         fieldWidth: 50,
//                         activeFillColor:
//                         hasError ? Colors.orange : Colors.white,
//                       ),
//                       cursorColor: Colors.black,
//                       animationDuration: Duration(milliseconds: 300),
//                       textStyle: TextStyle(fontSize: 20, height: 1.6),
//                       backgroundColor: Colors.blue.shade50,
//                       enableActiveFill: true,
//                       errorAnimationController: errorController,
//                       controller: textEditingController,
//                       keyboardType: TextInputType.number,
//                       boxShadows: [
//                         BoxShadow(
//                           offset: Offset(0, 1),
//                           color: Colors.black12,
//                           blurRadius: 10,
//                         )
//                       ],
//                       onCompleted: (v) {
//                         print("Completed");
//                       },
//                       // onTap: () {
//                       //   print("Pressed");
//                       // },
//                       onChanged: (value) {
//                         print(value);
//                         setState(() {
//                           currentText = value;
//                         });
//                       },
//                       beforeTextPaste: (text) {
//                         print("Allowing to paste $text");
//                         //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
//                         //but you can show anything you want here, like your pop up saying wrong paste format or etc
//                         return true;
//                       },
//                     )),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                 child: Text(
//                   hasError ? "*Please fill up all the cells properly" : "",
//                   style: TextStyle(
//                       color: Colors.red,
//                       fontSize: 12,
//                       fontWeight: FontWeight.w400),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               RichText(
//                 textAlign: TextAlign.center,
//                 text: TextSpan(
//                     text: "Didn't receive the code? ",
//                     style: TextStyle(color: Colors.black54, fontSize: 15),
//                     children: [
//                       TextSpan(
//                           text: " RESEND",
//                           recognizer: onTapRecognizer,
//                           style: TextStyle(
//                               color: Color(0xFF91D3B3),
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16))
//                     ]),
//               ),
//               SizedBox(
//                 height: 14,
//               ),
//               Container(
//                 margin:
//                 const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
//                 child: ButtonTheme(
//                   height: 50,
//                   child: FlatButton(
//                     onPressed: () {
//                       formKey.currentState.validate();
//                       // conditions for validating
//                       if (currentText.length != 6 || currentText != "towtow") {
//                         errorController.add(ErrorAnimationType
//                             .shake); // Triggering error shake animation
//                         setState(() {
//                           hasError = true;
//                         });
//                       } else {
//                         setState(() {
//                           hasError = false;
//                           scaffoldKey.currentState.showSnackBar(SnackBar(
//                             content: Text("Aye!!"),
//                             duration: Duration(seconds: 2),
//                           ));
//                         });
//                       }
//                     },
//                     child: Center(
//                         child: Text(
//                           "VERIFY".toUpperCase(),
//                           style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold),
//                         )),
//                   ),
//                 ),
//                 decoration: BoxDecoration(
//                     color: Colors.green.shade300,
//                     borderRadius: BorderRadius.circular(5),
//                     boxShadow: [
//                       BoxShadow(
//                           color: Colors.green.shade200,
//                           offset: Offset(1, -2),
//                           blurRadius: 5),
//                       BoxShadow(
//                           color: Colors.green.shade200,
//                           offset: Offset(-1, 2),
//                           blurRadius: 5)
//                     ]),
//               ),
//               SizedBox(
//                 height: 16,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   FlatButton(
//                     child: Text("Clear"),
//                     onPressed: () {
//                       textEditingController.clear();
//                     },
//                   ),
//                   FlatButton(
//                     child: Text("Set Text"),
//                     onPressed: () {
//                       textEditingController.text = "123456";
//                     },
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
/*
import "package:flutter/material.dart";

void main() {
  runApp(new ControlleApp());
}

class ControlleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "My App",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  bool visibilityTag = false;
  bool visibilityObs = false;

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "tag"){
        visibilityTag = visibility;
      }
      if (field == "obs"){
        visibilityObs = visibility;
      }
    });
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
        appBar: new AppBar(backgroundColor: new Color(0xFF26C6DA)),
        body: new ListView(
          children: <Widget>[
            new Container(
              margin: new EdgeInsets.all(20.0),
              child: new FlutterLogo(size: 100.0),
            ),
            new Container(
                margin: new EdgeInsets.only(left: 16.0, right: 16.0),
                child: new Column(
                  children: <Widget>[
                    visibilityObs ? new Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        new Expanded(
                          flex: 11,
                          child: new TextField(
                            maxLines: 1,
                            style: Theme.of(context).textTheme.title,
                            decoration: new InputDecoration(
                                labelText: "Observation",
                                isDense: true
                            ),
                          ),
                        ),
                        new Expanded(
                          flex: 1,
                          child: new IconButton(
                            color: Colors.grey[400],
                            icon: const Icon(Icons.cancel, size: 22.0,),
                            onPressed: () {
                              _changed(false, "obs");
                            },
                          ),
                        ),
                      ],
                    ) : new Container(),

                    visibilityTag ? new Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        new Expanded(
                          flex: 11,
                          child: new TextField(
                            maxLines: 1,
                            style: Theme.of(context).textTheme.title,
                            decoration: new InputDecoration(
                                labelText: "Tags",
                                isDense: true
                            ),
                          ),
                        ),
                        new Expanded(
                          flex: 1,
                          child: new IconButton(
                            color: Colors.grey[400],
                            icon: const Icon(Icons.cancel, size: 22.0,),
                            onPressed: () {
                              _changed(false, "tag");
                            },
                          ),
                        ),
                      ],
                    ) : new Container(),
                  ],
                )
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new InkWell(
                    onTap: () {
                      visibilityObs ? null : _changed(true, "obs");
                    },
                    child: new Container(
                      margin: new EdgeInsets.only(top: 16.0),
                      child: new Column(
                        children: <Widget>[
                          new Icon(Icons.comment, color: visibilityObs ? Colors.grey[400] : Colors.grey[600]),
                          new Container(
                            margin: const EdgeInsets.only(top: 8.0),
                            child: new Text(
                              "Observation",
                              style: new TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: visibilityObs ? Colors.grey[400] : Colors.grey[600],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),
                new SizedBox(width: 24.0),
                new InkWell(
                    onTap: () {
                      visibilityTag ? null : _changed(true, "tag");
                    },
                    child: new Container(
                      margin: new EdgeInsets.only(top: 16.0),
                      child: new Column(
                        children: <Widget>[
                          new Icon(Icons.local_offer, color: visibilityTag ? Colors.grey[400] : Colors.grey[600]),
                          new Container(
                            margin: const EdgeInsets.only(top: 8.0),
                            child: new Text(
                              "Tags",
                              style: new TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: visibilityTag ? Colors.grey[400] : Colors.grey[600],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),
              ],
            )
          ],
        )
    );
  }
}*/
