import 'package:car1/Constant/Colors.dart';
import 'package:car1/Vendor/Manager/Cars/HomePageCar.dart';
import 'package:car1/Vendor/Manager/Products/HomePageProduct.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageServices extends StatelessWidget {
  const HomePageServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomePageCar()));
          },
          child: Container(
            decoration: BoxDecoration(
              color: ktherdeycolor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'photo/background.png',
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: MediaQuery.of(context).size.width * 0.9,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Cars",
                  style: TextStyle(
                      color: ksecondrycolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomePageProduct()));
          },
          child: Container(
            decoration: BoxDecoration(
              color: ktherdeycolor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'photo/background.png',
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: MediaQuery.of(context).size.width * 0.9,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Products",
                  style: TextStyle(
                      color: ksecondrycolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomePageServices()));
          },
          child: Container(
            decoration: BoxDecoration(
              color: ktherdeycolor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'photo/background.png',
                    height: MediaQuery.of(context).size.height * 0.17,
                    width: MediaQuery.of(context).size.width * 0.9,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  "Services",
                  style: TextStyle(
                      color: ksecondrycolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
