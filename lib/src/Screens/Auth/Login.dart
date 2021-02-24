import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("name"),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                prefixIcon: Icon(Icons.perm_identity),
                labelText: "username",
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextField(
                decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              prefixIcon: Icon(Icons.lock),
              labelText: "password",
              suffixIcon: Icon(Icons.remove_red_eye),
            )),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                height: 50,
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
          ),
          FlatButton(onPressed: (){},
              child: Text("Forgot your password?"),


          ),
          InkWell(
            onTap: (){},
            child: RichText(text: TextSpan(
                text: 'don\'t have an account?  ',
              style: TextStyle(color: Colors.black87),
              children: [
                
                TextSpan(
                  text:"Sign in",style: TextStyle(color: Colors.blue)
                )

              ]
            )),
          ),
          InkWell(
            onTap: (){},
            child: RichText(text: TextSpan(
                text: 'don\'t have an account?  ',
              style: TextStyle(color: Colors.black87),
              children: [

                TextSpan(
                  text:"Sign in",style: TextStyle(color: Colors.blue)
                )

              ]
            )),
          )
            ],
          )


    );
  }
}
