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
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromARGB(255, 21, 28, 55),
        ),
        scaffoldBackgroundColor: Color.fromARGB(255, 21, 28, 55),
      ),
    );
  }
}
