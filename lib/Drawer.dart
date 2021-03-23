import 'package:flutter/material.dart';
import 'package:thefinalproject/src/Screens/Auth/sign_in_screen.dart';
import 'package:thefinalproject/src/Screens/Settings/Settings.dart';
import 'package:thefinalproject/mylisttile.dart';
import 'package:thefinalproject/src/Screens/About.dart';
import 'package:easy_localization/easy_localization.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}
//TODO convert stateful to statless

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.only(top: h * 0.04),
            children: <Widget>[
              DrawerHeader(
                child: Text(''),
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    image: DecorationImage(
                        image: AssetImage("assets/photos/7.png"), fit: BoxFit.cover)),
              ),
              MyListTile(
                myicon: IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.redAccent,

                  ),
                ),
                text: 'Settings'.tr().toString(),
                onTap: () {
                  print("onclick");
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => Settings(),
                    ),
                  );
                },
              ),
              MyListTile(
                myicon: IconButton(
                  icon: Icon(
                    Icons.shopping_cart_rounded,
                    color: Colors.redAccent,
                  ),
                ),
                text: 'My Cart'.tr().toString(),
                onTap: () {},
              ),
              MyListTile(
                myicon: IconButton(
                  icon: Icon(
                    Icons.shopping_bag,
                    color: Colors.redAccent,
                  ),
                ),
                text: 'My Purchases'.tr().toString(),
                onTap: () {},
              ),
              MyListTile(
                myicon: IconButton(
                  icon: Icon(
                    Icons.local_activity_rounded,
                    color: Colors.redAccent,
                  ),
                ),
                text: 'My Activities'.tr().toString(),
                onTap: () {},
              ),
              GestureDetector(
                child: MyListTile(
                  myicon: IconButton(
                    icon: Icon(
                      Icons.info,
                      color: Colors.redAccent,
                    ),
                  ),
                  text: 'About'.tr().toString(),

                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: h * 0.19),
                child: MyListTile(
                  myicon: IconButton(
                    icon: Icon(
                      Icons.logout,
                      color: Colors.redAccent,
                    ),
                  ),
                  text: 'Log Out'.tr().toString(),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (_) => SignInscreen(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
    );
  }
}
