import 'package:car1/Constant/Colors.dart';
import 'package:car1/Splash/splash.dart';
import 'package:car1/Vendor/home/HomePageVendor.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageVendor(),
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(backgroundColor: Colors.blue),
          scaffoldBackgroundColor: ksecondrycolor),
    );
  }
}
