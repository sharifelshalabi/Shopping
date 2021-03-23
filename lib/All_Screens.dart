import 'package:thefinalproject/Custom_Widgets.dart';


class AllScreens extends StatefulWidget {
  @override
  _AllScreensState createState() => _AllScreensState();
}

class _AllScreensState extends State<AllScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(padding: EdgeInsets.symmetric(vertical: 100),
            child: Column(
              children: [
                FlatButton(onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (_) => SignInscreen()));
                }, child: Text('SignInScreen'),color: Colors.redAccent,),


                FlatButton(onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (_) => Signup()));
                }, child: Text('Signup'),color: Colors.redAccent,),


                FlatButton(onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (_) => Settings()));
                }, child: Text('Settings'),color: Colors.redAccent,),


                FlatButton(onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (_) => About()));
                }, child: Text('About'),color: Colors.redAccent,),


                FlatButton(onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (_) => Splash()));
                }, child: Text('SplashScreen'),color: Colors.redAccent,),


                FlatButton(onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (_) => Products()));
                }, child: Text('AllProducts'),color: Colors.redAccent,),


                FlatButton(onPressed: (){
                  Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (_) => ChangePassword()));
                }, child: Text('ChangePassword'),color: Colors.redAccent,),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
