import 'package:car1/Constant/Colors.dart';

import 'package:car1/User/Home/HomePageUser.dart';
import 'package:car1/Vendor/home/HomePageVendor.dart';
import 'package:car1/Widgets/textInputCustom.dart';
import 'package:car1/accounts/LogIn.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  int _selectedCircle = 0; // قيمة الدائرة الابتدائية
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => LogIn()));
          },
          icon: Icon(Icons.arrow_back),
          color: ksecondrycolor,
        ),
        title: Text(
          'Sign Up',
          style: TextStyle(fontWeight: FontWeight.bold, color: ksecondrycolor),
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
                      color: kprimareycolor,
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
                  style: TextStyle(color: ktherdeycolor, fontSize: 15),
                ),
              ),
              Center(
                child: Text(
                  "you can always change it later.",
                  style: TextStyle(color: ktherdeycolor, fontSize: 15),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              TextInputForAll(hint: "Enter User Name", icon: Icons.person),
              SizedBox(height: 20),
              TextInputForAll(hint: "Enter your Email", icon: Icons.email),
              SizedBox(height: 20),
              TextInputForAll(
                hint: "Enter your Password",
                icon: Icons.lock,
              ),
              SizedBox(height: 46),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "User",
                        style: TextStyle(
                            color: kprimareycolor, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      GestureDetector(
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
                      Text("Vendor",
                          style: TextStyle(
                              color: kprimareycolor,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      GestureDetector(
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
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 4),
                        blurRadius: 5.0)
                  ],
                  gradient: kprimareybuttoncolor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  onPressed: () {
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
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Please select the gender.",
                                style: TextStyle(color: ksecondrycolor),
                              ),
                              SizedBox(height: 8),
                              GestureDetector(
                                onTap: () {
                                  ScaffoldMessenger.of(context)
                                      .hideCurrentSnackBar();
                                },
                                child: Text(
                                  "OK",
                                  style: TextStyle(color: ksecondrycolor),
                                ),
                              ),
                            ],
                          ),
                          backgroundColor: ktherdeycolor,
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent),
                    shadowColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.2,
                      vertical: MediaQuery.of(context).size.height * 0.02,
                    ),
                    //  primary: Colors.blue,
                  ),
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: ksecondrycolor,
                      fontWeight: FontWeight.bold,
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
