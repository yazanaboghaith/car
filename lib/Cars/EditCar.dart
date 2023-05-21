import 'package:car1/Constant/Colors.dart';
import 'package:flutter/material.dart';

class EditCar extends StatefulWidget {
  const EditCar({Key? key}) : super(key: key);

  @override
  State<EditCar> createState() => _EditCarState();
}

class _EditCarState extends State<EditCar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Car",
          style: (TextStyle(
              color: ksecondrycolor,
              fontWeight: FontWeight.bold,
              fontSize: 30)),
        ),
      ),
      body: Column(
        children: [
          TextField(
            onTap: () {},
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
