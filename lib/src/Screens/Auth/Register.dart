import 'package:thefinalproject/Custom_Widgets.dart';
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isSeen = false;
  bool isSeen2 = false;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: h,
            width: w,
            child: Stack(children: [
              Container(
                height: h * 0.50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/3.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.only(left: w * 0.1, right: w * 0.1),
                  height: h * 0.50,
                  width: w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          topLeft: Radius.circular(25))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: h * 0.05),
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Full name',
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffff4d4d),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        TextFormField(
                          obscureText: isSeen,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffff4d4d),
                              ),
                            ),
                            hintText: 'Enter Password',
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
                                      )),
                          ),
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                        TextFormField(
                          obscureText: isSeen2,
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xffff4d4d),
                              ),
                            ),
                            hintText: 'Confirm Password',
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
                        SizedBox(
                          height: h * 0.02,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'already have an account?',
                            ),
                            InkWell(
                                child: Text(
                                  'Sign in',
                                  style: TextStyle(color: Color(0xffff4d4d)),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SignInscreen(),
                                  ));
                                })
                          ],
                        )
                      ]),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    height: w * 0.15,
                    width: w * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.grey[500],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      // icon needs editing need to be put between the two containers
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}
