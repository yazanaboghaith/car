import 'package:car1/Constant/Colors.dart';
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
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => LogInUser()));
          },
          icon: Icon(Icons.reset_tv_rounded),
          color: ksecondrycolor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Text(
                "Forget Password",
                style: TextStyle(
                    color: kbasetextcolor,
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
                style: TextStyle(color: ksecondrytextcolor, fontSize: 18),
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
                    style: TextStyle(color: kprimareycolor, fontSize: 25),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: ksecondrycolor,
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
                  style: TextStyle(color: ksecondrytextcolor, fontSize: 15),
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
                      style: TextStyle(
                          color: kbasetextcolor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
