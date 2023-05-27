import 'package:car1/Constant/Colors.dart';
import 'package:car1/Vendor/Manager/Cars/EditCar.dart';
import 'package:flutter/material.dart';

class HomePageCar extends StatefulWidget {
  const HomePageCar({Key? key}) : super(key: key);

  @override
  State<HomePageCar> createState() => _HomePageCarState();
}

class _HomePageCarState extends State<HomePageCar> {
  List<String> items = [
    "car",
    "car",
    "car",
    "car",
    "car",
    "car",
    "car",
    "car",
    "car",
    "car",
    "car",
    "car",
    "car",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cars",
          style: TextStyle(
            color: ksecondrycolor,
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            tileColor: Colors.red,
            title: Text(items[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditCar(),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
