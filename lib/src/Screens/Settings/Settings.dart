import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:country_icons/country_icons.dart';
import 'package:thefinalproject/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:thefinalproject/src/Screens/splash_screen.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool visibilityLang = false;
  bool visibilityTheme = false;
  bool iconLang = false;
  bool iconTheme = false;
  int selectedRadioTile;

  @override
  void initState() {

    selectedRadioTile = 0;
    super.initState();
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "Lang") {
        visibilityLang = visibility;
        visibilityTheme = !visibility;
      }
      if (field == "Theme") {
        visibilityTheme = visibility;
        visibilityLang = !visibility;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50, left: 10, bottom: 10),
                child: Text(
                  'General Settings',
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 2, left: 10, right: 10),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Column(
                      children: [
                        FlatButton(
                          materialTapTargetSize:
                          MaterialTapTargetSize.shrinkWrap,
                          color: Colors.white,
                          onPressed: () {},
                          child: InkWell(
                            onTap: () {
                              iconLang = !iconLang;
                              visibilityTheme
                                  ? _changed(false, "Theme")
                                  : _changed(true, "Theme");
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Icon(Icons.language),
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      iconLang = !iconLang;
                                      visibilityLang
                                          ? _changed(false, "Lang")
                                          : _changed(true, "Lang");
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Change Language',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                        ),
                                        IconButton(
                                          alignment: Alignment.centerRight,
                                          onPressed: () {
                                            iconLang = !iconLang;
                                            visibilityLang
                                                ? _changed(false, "Lang")
                                                : _changed(true, "Lang");
                                          },
                                          icon: Icon(iconLang
                                              ? Icons.keyboard_arrow_down
                                              : Icons.keyboard_arrow_right),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        visibilityLang
                            ? Container(
                          child: Column(
                            children: [
                              Divider(
                                thickness: 1.5,
                                height: 0,
                                endIndent: 30.0,
                                indent: 30.0,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          "assets/photos/download.png",
                                        ),
                                        radius: 17,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "العربية",
                                        style: kTextFlagStyle,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  FlatButton(
                                    onPressed: () {
                                      context.locale = Locale("ar", "AR");
                                      Navigator.push(context, MaterialPageRoute(
                                          builder: (context) => Spalsh(),));
                                    },
                                    child: Text("Change"),
                                    splashColor: Colors.grey,
                                  ),
                                  FlatButton(
                                    onPressed: () {

                                    },
                                    child: Text("Cancel"),
                                    splashColor: Colors.grey,
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 1.5,
                                height: 0,
                                endIndent: 30.0,
                                indent: 30.0,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          "assets/photos/british.png",
                                        ),
                                        radius: 17,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "English",
                                        style: kTextFlagStyle,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  FlatButton(
                                    onPressed: () {
                                      context.locale = Locale("en", "EN");
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => Spalsh(),));
                                    },
                                    child: Text("Change"),
                                    splashColor: Colors.grey,
                                  ),
                                  FlatButton(
                                    onPressed: () {

                                    },
                                    child: Text("Cancel"),
                                    splashColor: Colors.grey,
                                  ),
                                ],
                              ),Divider(
                                thickness: 1.5,
                                height: 0,
                                endIndent: 30.0,
                                indent: 30.0,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          "assets/photos/france.png",
                                        ),
                                        radius: 17,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "français",
                                        style: kTextFlagStyle,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  FlatButton(
                                    onPressed: () {
                                      context.locale = Locale("fr", "FR");
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => Spalsh(),));
                                    },
                                    child: Text("Change"),
                                    splashColor: Colors.grey,
                                  ),
                                  FlatButton(
                                    onPressed: () {

                                    },
                                    child: Text("Cancel"),
                                    splashColor: Colors.grey,
                                  ),
                                ],
                              ),Divider(
                                thickness: 1.5,
                                height: 0,
                                endIndent: 30.0,
                                indent: 30.0,
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          "assets/photos/spain.png",
                                        ),
                                        radius: 17,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Español",
                                        style: kTextFlagStyle,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  FlatButton(
                                    onPressed: () {
                                      context.locale = Locale("es", "ES");
                                      Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => Spalsh(),));
                                    },
                                    child: Text("Change"),
                                    splashColor: Colors.grey,
                                  ),
                                  FlatButton(
                                    onPressed: () {

                                    },
                                    child: Text("Cancel"),
                                    splashColor: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                            : Container(),

                      ],
                    ),
                    Divider(
                      thickness: 1.5,
                      height: 0,

                    ),
                    Column(
                      children: [
                        FlatButton(
                          materialTapTargetSize:
                          MaterialTapTargetSize.shrinkWrap,
                          color: Colors.white,
                          onPressed: () {},
                          child: InkWell(
                            onTap: () {
                              iconTheme = !iconTheme;
                              visibilityTheme
                                  ? _changed(false, "Theme")
                                  : _changed(true, "Theme");
                            },
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Icon(Icons.color_lens),
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: () {
                                      iconTheme = !iconTheme;
                                      visibilityTheme
                                          ? _changed(false, "Theme")
                                          : _changed(true, "Theme");
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            'Change Theme',
                                            style: TextStyle(fontSize: 17),
                                          ),
                                        ),
                                        IconButton(
                                          alignment: Alignment.centerRight,
                                          onPressed: () {
                                            iconTheme = !iconTheme;
                                            visibilityTheme
                                                ? _changed(false, "Theme")
                                                : _changed(true, "Theme");
                                          },
                                          icon: Icon(iconTheme
                                              ? Icons.keyboard_arrow_down
                                              : Icons.keyboard_arrow_right),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        visibilityTheme
                            ? Container(
                          child: Column(
                            children: [
                              Divider(
                                thickness: 1.5,
                                height: 0,
                              ),
                              RadioListTile(
                                value: 1,
                                groupValue: selectedRadioTile,
                                title: Text("Light"),
                                onChanged: (val) {
                                  setSelectedRadioTile(val);
                                },
                                activeColor: Colors.grey,
                                selected:
                                selectedRadioTile == 1 ? true : false,
                              ),
                              RadioListTile(
                                value: 2,
                                groupValue: selectedRadioTile,
                                title: Text("Dark"),
                                onChanged: (val) {
                                  setSelectedRadioTile(val);
                                },
                                activeColor: Colors.black,
                                selected:
                                selectedRadioTile == 2 ? true : false,
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("Change"),
                                    splashColor: Colors.grey,
                                  ),
                                  FlatButton(
                                    onPressed: () {},
                                    child: Text("Cancel"),
                                    splashColor: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                            : Container(),
                      ],
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
