import 'package:car1/Constant/Colors.dart';

import 'package:car1/User/Home/HomePageUser.dart';
import 'package:car1/Vendor/home/HomePageVendor.dart';
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
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(16.0),
                  prefixIcon: Icon(
                    Icons.person,
                    color: kprimareyiconcolor,
                  ),
                  hintText: "Enter User Name",
                  hintStyle: TextStyle(color: ktherdeycolor),
                  helperStyle: TextStyle(color: ktherdeycolor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: kprimareycolor,
                    ),
                  ),
                  filled: true,
                  fillColor: ksecondrycolor,
                ),
                style: TextStyle(color: kprimareycolor), // لون النص داخل الحقل
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(16.0),
                  prefixIcon: Icon(
                    Icons.email,
                    color: kprimareyiconcolor,
                  ),
                  hintText: "Enter your Email",
                  hintStyle: TextStyle(color: ktherdeycolor),
                  helperStyle: TextStyle(color: ktherdeycolor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(
                      color: kprimareycolor,
                    ),
                  ),
                  filled: true,
                  fillColor: ksecondrycolor,
                ),
                style: TextStyle(color: kprimareycolor), // لون النص داخل الحقل
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(16.0),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: kprimareyiconcolor,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: kprimareycolor,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                  hintText: "Enter your password",
                  hintStyle: TextStyle(color: ktherdeycolor),
                  helperStyle: TextStyle(color: ktherdeycolor),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: ksecondrycolor,
                ),
                style: TextStyle(color: kprimareycolor),
                obscureText: !_passwordVisible,
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
              ElevatedButton(
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
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.2,
                    vertical: MediaQuery.of(context).size.height * 0.02,
                  ),
                  primary: Colors.blue,
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                    color: ksecondrycolor,
                    fontWeight: FontWeight.bold,
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
