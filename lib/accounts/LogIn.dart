import 'package:car1/Constant/Colors.dart';
import 'package:car1/User/Home/HomePageUser.dart';
import 'package:car1/accounts/ForgetPassword.dart';
import 'package:car1/accounts/SignUp.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 80),
                        height: 80,
                      ),
                      Text(
                        "carXchange",
                        style: TextStyle(
                          color: kprimareycolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(height: 80),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(16.0),
                          prefixIcon: Icon(
                            Icons.person,
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
                        style: TextStyle(
                            color: kprimareycolor), // لون النص داخل الحقل
                      ),
                      SizedBox(height: 40),
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
                      SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePageUser()));
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
                          "Log In",
                          style: TextStyle(
                            color: ksecondrycolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignupPage()));
                            },
                            child: Text(
                              "Create Account",
                              style: TextStyle(
                                color: kprimareycolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Container(
                            color: kprimareycolor,
                            width: 2.5,
                            height: 25.0,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ForgetPassword()));
                            },
                            child: Text(
                              "Forget Password",
                              style: TextStyle(
                                color: kprimareycolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
