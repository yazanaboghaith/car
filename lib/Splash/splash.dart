import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:car1/LogIn.dart';
import 'package:car1/User/Home/HomePageUser.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _navigatetohome();
    super.initState();
  }

  _navigatetohome() async {
    await Future.delayed(
        Duration(seconds: 5),
        () async => {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                    type: PageTransitionType.rightToLeft,
                    child: LogInUser(),
                    isIos: false,
                    duration: Duration(milliseconds: 300),
                  ))
            });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: width * 0.8,
                        child: Image.asset("photo/background.png")),
                    SizedBox(
                      height: height * 0.3,
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomCenter,
                      child: AnimatedTextKit(
                        animatedTexts: [
                          WavyAnimatedText('carXchange',
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "Robota"))
                        ],
                      ),
                    )
                  ]),
            ],
          ),
        ));
  }
}
