import 'package:car1/User/Home/HomePageUser.dart';
import 'package:car1/Vendor/profile/ProfileVendor.dart';
import 'package:flutter/material.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({Key? key}) : super(key: key);

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(80, 120, 0, 0),
          child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ProfileVendor()));
              },
              child: Container(
                child: Text(
                  "back",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(radius: 70),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text(
                  "Edit",
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 40, 10, 20),
                child: Column(
                  children: [
                    TextField(
                      onTap: () {},
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: "Name",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      autofocus: false,
                      onTap: () {},
                      decoration: InputDecoration(
                        labelText: "Email",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      autofocus: false,
                      onTap: () {},
                      decoration: InputDecoration(
                        labelText: "Phone",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
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
