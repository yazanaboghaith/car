import 'package:car1/Auth/LogIn.dart';
import 'package:car1/Constant/Colors.dart';
import 'package:car1/User/Home/HomePageUser.dart';

import 'package:car1/Constant/TextInputForAll.dart';
import 'package:car1/Widgets/SelectVendor.dart';

import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _passwordVisible = false;
  String? Person;

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
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  style: TextStyle(color: kprimareycolor, fontSize: 15),
                ),
              ),
              Center(
                child: Text(
                  "you can always change it later.",
                  style: TextStyle(color: kprimareycolor, fontSize: 15),
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
              SizedBox(height: 20),
              TextInputForAll(
                hint: "Enter your phone",
                icon: Icons.phone,
              ),
              SizedBox(height: 46),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.072,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(120),
                    ),
                    child: Radio(
                      value: "User",
                      groupValue: Person,
                      onChanged: (value) {
                        setState(() {
                          Person = value.toString();
                        });
                      },
                      activeColor: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9),
                    child: Text(
                      "User",
                      style: TextStyle(
                          color: kprimareycolor, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.04,
                    width: MediaQuery.of(context).size.width * 0.072,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.5),
                      borderRadius: BorderRadius.circular(120),
                    ),
                    child: Radio(
                      value: "Vendor",
                      groupValue: Person,
                      onChanged: (value) {
                        setState(() {
                          Person = value.toString();
                        });
                      },
                      activeColor: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9),
                    child: Text(
                      "Vendor",
                      style: TextStyle(
                          color: kprimareycolor, fontWeight: FontWeight.bold),
                    ),
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
                    if (Person == "User") {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomePageUser()));
                    } else if (Person == "Vendor") {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SelectVendor()));
                    } else if (Person == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Entry must be specified",
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
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent),
                    shadowColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.2,
                        vertical: MediaQuery.of(context).size.height * 0.02,
                      ),
                    ),
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
