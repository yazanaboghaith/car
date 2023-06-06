import 'package:car1/Auth/SignUp.dart';

import 'package:car1/Constant/Colors.dart';
import 'package:car1/Adds/AddCars.dart';
import 'package:car1/Adds/AddProducts.dart';
import 'package:car1/Adds/AddServices.dart';
import 'package:flutter/material.dart';

class SelectVendor extends StatefulWidget {
  const SelectVendor({Key? key}) : super(key: key);

  @override
  State<SelectVendor> createState() => _SelectVendorState();
}

class _SelectVendorState extends State<SelectVendor> {
  String? selectedValue;

  void navigateToSelectedPage() {
    if (selectedValue == 'Car') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => AddCars()));
    } else if (selectedValue == 'Product') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => AddProducts()));
    } else if (selectedValue == 'Service') {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => AddServices()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 90, right: 0, bottom: 0, left: 0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('photo/background.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Text(
                "What do you want to submit?",
                style: TextStyle(
                  color: kprimareycolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.98,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          selectedValue ?? 'Add your submit',
                          style: TextStyle(color: Colors.grey, fontSize: 22),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: DropdownButton<String>(
                        dropdownColor: ktherdeycolor,
                        value: selectedValue,
                        onChanged: (newValue) {
                          setState(() {
                            selectedValue = newValue;
                          });
                        },
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: kprimareyiconcolor,
                        ),
                        iconSize: 36,
                        underline: SizedBox(),
                        items: [
                          DropdownMenuItem<String>(
                            value: 'Car',
                            child: Text('Car'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Product',
                            child: Text('Product'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Service',
                            child: Text('Service'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: kprimareybuttoncolor,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context, SignupPage());
                        },
                        child: Text(
                          "Back",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: ksecondrycolor,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: kprimareybuttoncolor,
                      ),
                      child: TextButton(
                        onPressed: () {
                          navigateToSelectedPage();
                        },
                        child: Text(
                          "Enter",
                          style: TextStyle(
                            color: ksecondrycolor,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
