import 'package:car1/Constant/Colors.dart';
import 'package:car1/User/Home/HomePageUser.dart';
import 'package:car1/Widgets/textInputCustom.dart';
import 'package:flutter/material.dart';
import 'signup.dart';
import 'ForgetPassword.dart';

class LogInUser extends StatefulWidget {
  const LogInUser({Key? key}) : super(key: key);

  @override
  State<LogInUser> createState() => _LogInUserState();
}

class _LogInUserState extends State<LogInUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, //ازالة الخط الفاصل بين العنوان والحسم
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 4, 16, 30),
            child: Column(
              children: [
                Opacity(
                  opacity: 1, // الشفافية
                  child: Image.asset(
                    'photo/background.png',
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Welcome Back",
                  style: TextStyle(fontSize: 20, color: kbasetextcolor),
                ),
                SizedBox(height: 10),
                Text(
                  "Log in to your account using email ",
                  style: TextStyle(color: ksecondrycolor, fontSize: 15),
                ),
                SizedBox(height: 6),
                Text(
                  "or social network",
                  style: TextStyle(color: ksecondrycolor, fontSize: 15),
                ),
                SizedBox(height: 80),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextInputCustom(
                      hint: "Username",
                    )),
                SizedBox(height: 20),
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextInputCustom(
                      hint: "Password",
                    )),
                SizedBox(height: 1),
                Padding(
                  padding: const EdgeInsets.fromLTRB(180, 0, 15, 0),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassword()));
                    },
                    child: Text("Forget Password?"),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HomePageUser()));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: MediaQuery.of(context).size.height * 0.05,
                    child: Center(
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
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
                SizedBox(
                  height: 60,
                  child: Center(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Create new account?",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(width: 1),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignupPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "Sign UP",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
