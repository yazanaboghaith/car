import 'package:car1/Constant/Colors.dart';
import 'package:flutter/material.dart';

import 'LogIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInUser(),
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(backgroundColor: kprimareycolor),
          scaffoldBackgroundColor: kprimareycolor),
    );
  }
}
