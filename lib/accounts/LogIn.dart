import 'package:car1/Constant/Colors.dart';
import 'package:car1/User/Home/HomePageUser.dart';
import 'package:car1/Widgets/textInputCustom.dart';
import 'package:car1/accounts/ForgetPassword.dart';
import 'package:car1/accounts/SignUp.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  void dispose() {
    // TODO: implement dispose
    FocusScope.of(context).unfocus();

    super.dispose();
  }

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
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
                          TextInputForAll(
                            hint: "Enter your Email",
                            icon: Icons.person,
                          ),
                          SizedBox(height: 40),
                          TextInputForAll(
                              hint: "Enter your Password", icon: Icons.lock),
                          SizedBox(height: 40),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0, 4),
                                    blurRadius: 5.0)
                              ],
                              gradient: kprimareybuttoncolor,
                              color: Colors.deepPurple.shade300,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomePageUser()));
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
                                  horizontal:
                                      MediaQuery.of(context).size.width * 0.2,
                                  vertical:
                                      MediaQuery.of(context).size.height * 0.02,
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
                                          builder: (context) =>
                                              ForgetPassword()));
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
        ),
      ),
    );
  }
}
