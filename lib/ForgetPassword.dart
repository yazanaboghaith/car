import 'package:car1/LogIn.dart';
import 'package:flutter/material.dart';

import 'Widgets/textInputSignUp.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Center(
              child: Text(
                "Forget Password",
                style: TextStyle(
                    color: Color.fromARGB(255, 240, 241, 242),
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Please enter your email address. So we'll send you link to get back into your account.",
                style: TextStyle(
                    color: Color.fromARGB(255, 66, 72, 95), fontSize: 18),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            textInputSignUp(icon: Icons.email, hint: "Email"),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                child: Center(
                  child: Text(
                    "Send code",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color.fromARGB(255, 110, 118, 192),
                      Color.fromARGB(255, 62, 134, 198),
                    ],
                  ),
                ),
                width: MediaQuery.of(context).size.width * 0.45,
                height: MediaQuery.of(context).size.height * 0.05,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                SizedBox(
                  width: 1.6,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LogInUser()));
                    },
                    child: Text(
                      "Log In",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
