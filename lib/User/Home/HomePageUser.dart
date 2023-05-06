import 'package:car1/LogIn.dart';
import 'package:car1/User/Profile/ProfileUser.dart';
import 'package:flutter/material.dart';

class HomePageUser extends StatefulWidget {
  const HomePageUser({Key? key}) : super(key: key);

  @override
  State<HomePageUser> createState() => _HomePageUserState();
}

class _HomePageUserState extends State<HomePageUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 80, 1, 1),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => ProfileUser()));
                },
                child: Text(
                  "Profile",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "Info",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LogInUser()));
                },
                child: Text("Log Out"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
