import 'package:thefinalproject/Custom_Widgets.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffff4d4d),
        title: Text(
          "About",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Card(
                margin:
                    EdgeInsets.symmetric(horizontal: w * 0.03, vertical: h * 0.02),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: w * 0.03, vertical: h * 0.02),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.redAccent,
                            radius: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: w * 0.04),
                            child: Text(
                              "User",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: w * 0.04, vertical: h * 0.02),
                      child: Row(
                        children: [
                          IconButton(icon: Icon(Icons.info), onPressed: () {}),
                          Padding(
                            padding: EdgeInsets.only(left: w * 0.06),
                            child: Column(
                              children: [
                                Text(
                                  "Version",
                                  style: kCardTextStyle,
                                ),
                                Text(
                                  "1.0",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: w * 0.04, vertical: h * 0.02),
                      child: Row(
                        children: [
                          IconButton(icon: Icon(Icons.share), onPressed: () {}),
                          Padding(
                            padding: EdgeInsets.only(left: w * 0.06),
                            child: Text(
                              "Share This App",
                              style: kCardTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
