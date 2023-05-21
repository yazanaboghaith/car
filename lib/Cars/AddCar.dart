import 'package:car1/Constant/Colors.dart';
import 'package:flutter/material.dart';

class AddCar extends StatefulWidget {
  const AddCar({Key? key}) : super(key: key);

  @override
  State<AddCar> createState() => _AddCarState();
}

class _AddCarState extends State<AddCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              contentPadding: EdgeInsets.all(16.0),
              prefixIcon: Icon(
                Icons.car_crash,
                color: kprimareyiconcolor,
              ),
              hintText: "Enter your Name Car",
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
        ],
      ),
    );
  }
}
