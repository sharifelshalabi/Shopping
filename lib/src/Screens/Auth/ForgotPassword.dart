import 'package:thefinalproject/Custom_Widgets.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool isSeen = true;
  bool isSeen2 = true;
  bool isSeen3 = true;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
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
                            image: AssetImage("assets/4.png"),
                            fit: BoxFit.cover),
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
                              padding: EdgeInsets.symmetric(vertical: h * 0.02),
                              child: Text(
                                'Change Password',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),SizedBox(height: h*0.02,),
                            TextFormField(
                              obscureText: isSeen3,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffff4d4d),
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xffff4d4d),
                                ),
                                hintText: 'Old Password',
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isSeen3 = !isSeen3;
                                    });
                                  },
                                  child: isSeen3
                                      ? Icon(
                                    Icons.visibility_off,
                                    color: Color(0xffff4d4d),
                                  )
                                      : Icon(
                                    Icons.remove_red_eye,
                                    color: Color(0xffff4d4d),
                                  ),
                                ),
                              ),
                            ),
                            TextFormField(
                              obscureText: isSeen,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffff4d4d),
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xffff4d4d),
                                ),
                                hintText: 'New Password',
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isSeen = !isSeen;
                                    });
                                  },
                                  child: isSeen
                                      ? Icon(
                                    Icons.visibility_off,
                                    color: Color(0xffff4d4d),
                                  )
                                      : Icon(
                                    Icons.remove_red_eye,
                                    color: Color(0xffff4d4d),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: h * 0.02),
                            TextFormField(
                              obscureText: isSeen2,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xffff4d4d),
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Color(0xffff4d4d),
                                ),
                                hintText: 'Confirm New Password',
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      isSeen2 = !isSeen2;
                                    });
                                  },
                                  child: isSeen2
                                      ? Icon(
                                    Icons.visibility_off,
                                    color: Color(0xffff4d4d),
                                  )
                                      : Icon(
                                    Icons.remove_red_eye,
                                    color: Color(0xffff4d4d),
                                  ),
                                ),
                              ),
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
