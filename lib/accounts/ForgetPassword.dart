import 'package:car1/Constant/Colors.dart';
import 'package:car1/accounts/LogIn.dart';

import 'package:flutter/material.dart';

import '../Widgets/textInputSignUp.dart';

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
                context, MaterialPageRoute(builder: (context) => LogIn()));
          },
          icon: Icon(Icons.arrow_back),
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
                    color: kprimareycolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            Center(
              child: Text(
                "Please enter your email address. So we'll send you link to get back into your account.",
                style: TextStyle(color: ktherdeycolor, fontSize: 18),
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
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {},
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
                "Send Code",
                style: TextStyle(
                  color: ksecondrycolor,
                  fontWeight: FontWeight.bold,
                ),
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
                  style: TextStyle(color: ktherdeycolor, fontSize: 15),
                ),
                SizedBox(
                  width: 1.5,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => LogIn()));
                    },
                    child: Text(
                      "Log In",
                      style: TextStyle(
                          color: kprimareycolor,
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
