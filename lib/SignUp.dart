import 'package:car1/Constant/Colors.dart';
import 'package:car1/User/Home/HomePageUser.dart';
import 'package:car1/Vendor/home/HomePageVendor.dart';
import 'package:flutter/material.dart';

import 'Widgets/textInputSignUp.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  int _selectedCircle = 0; // قيمة الدائرة الابتدائية

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.stretch, //ليمتد ع كامل عرض الشاشة
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Create New Account",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "set up your username and password.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 66, 72, 95), fontSize: 15),
                ),
              ),
              Center(
                child: Text(
                  "you can always change it later.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 66, 72, 95), fontSize: 15),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              textInputSignUp(icon: Icons.person, hint: "User Name"),
              SizedBox(height: 16),
              textInputSignUp(icon: Icons.email, hint: "Email"),
              SizedBox(height: 16),
              textInputSignUp(icon: Icons.lock, hint: "Confirm Password"),
              SizedBox(height: 16),
              textInputSignUp(icon: Icons.lock, hint: "Password"),
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "User",
                        style: TextStyle(color: ksecondrycolor),
                      ),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedCircle = 1;
                          });
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: _selectedCircle == 1
                                ? Colors.black
                                : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    children: [
                      Text("Vendor", style: TextStyle(color: ksecondrycolor)),
                      SizedBox(height: 10),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedCircle = 2;
                          });
                        },
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: _selectedCircle == 2
                                ? Colors.black
                                : Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 38),
              GestureDetector(
                onTap: () {
                  if (_selectedCircle == 1) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePageUser()));
                  } else if (_selectedCircle == 2) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePageVendor()));
                  } else if (_selectedCircle == 0) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text(
                            "Please select the gender.",
                            style: TextStyle(color: Colors.white),
                          ),
                          duration: Duration(seconds: 3),
                          backgroundColor: Colors.white12,
                          behavior: SnackBarBehavior.floating),
                    );
                  }
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color.fromARGB(255, 110, 118, 192),
                        Color.fromARGB(255, 62, 134, 198),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
