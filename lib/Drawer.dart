import 'package:thefinalproject/Custom_Widgets.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

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
                        image: AssetImage("assets/7.png"), fit: BoxFit.cover)),
              ),
              MyListTile(
                myicon: IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.redAccent,
                  ),
                ),
                text: 'Settings',
                onTap: () {
                  Navigator.of(context).push(
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
                text: 'My Cart',
                onTap: () {},
              ),
              MyListTile(
                myicon: IconButton(
                  icon: Icon(
                    Icons.shopping_bag,
                    color: Colors.redAccent,
                  ),
                ),
                text: 'My Purchases',
                onTap: () {},
              ),
              MyListTile(
                myicon: IconButton(
                  icon: Icon(
                    Icons.local_activity_rounded,
                    color: Colors.redAccent,
                  ),
                ),
                text: 'My Activities',
                onTap: () {},
              ),
              MyListTile(
                myicon: IconButton(
                  icon: Icon(
                    Icons.info,
                    color: Colors.redAccent,
                  ),
                ),
                text: 'About',
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => About(),
                  ));
                },

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
                  text: 'Log Out',
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
