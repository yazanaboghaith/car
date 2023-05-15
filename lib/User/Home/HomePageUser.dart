import 'package:flutter/material.dart';

class HomePageUser extends StatefulWidget {
  static const routeName = '/DarkDrawerPage';

  @override
  State<HomePageUser> createState() => _HomePageUserState();
}

class _HomePageUserState extends State<HomePageUser> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('Dark Drawer Navigation'),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _key.currentState?.openDrawer();
          },
        ),
      ),
      drawer: _buildDrawer(),
//
//
//
//
//
//
//
//
//
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: [
          Container(
            child: Text(
              "heeelo use",
              style: TextStyle(color: Colors.black),
            ),
          )
        ]),
      ),
    );
  }

//
//
//
//
//
//
//
//
//
//
//
  _buildDrawer() {
    // final String image = 'assets/images/wood_bk.jpg';
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              //تدرج لون الدراور
              colors: [
                Color.fromARGB(255, 12, 12, 11),
                Color.fromARGB(195, 238, 235, 236)
              ],
            ),
          ),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 247, 244, 245),
                          Color.fromARGB(235, 8, 8, 5)
                        ])),
                    child: CircleAvatar(
                      radius: 40,
                      //  backgroundImage: AssetImage(image),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "User",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  SizedBox(height: 30.0),
                  _buildRow(Icons.home, "Home"),
                  _buildDivider(), //الخط تحت النص
                  _buildRow(Icons.person_pin, "Your profile"),
                  _buildDivider(), //الخط تحت النص
                  _buildRow(Icons.settings, "Settings"),
                  _buildDivider(), //الخط تحت النص
                  _buildRow(Icons.email, "Log Out"),
                  _buildDivider(), //الخط تحت النص
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(color: Colors.white //لون الخط يلي تحت الكتابة
        );
  }

  Widget _buildRow(IconData icon, String title) {
    final TextStyle tStyle = TextStyle(color: Colors.white, fontSize: 16.0);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(children: [
        Icon(
          icon,
          color: Colors.white, //لون الايقونات
        ),
        SizedBox(width: 10.0),
        Text(
          title,
          style: tStyle,
        ),
      ]),
    );
  }
}

class OvalRightBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 40, 0);
    path.quadraticBezierTo(
        //درجة انحناء ال دراور
        size.width,
        size.height / 4,
        size.width,
        size.height / 2);
    path.quadraticBezierTo(size.width, size.height - (size.height / 6),
        size.width - 40, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
