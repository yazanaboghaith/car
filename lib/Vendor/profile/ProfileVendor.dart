import 'package:car1/Constant/Colors.dart';
import 'package:car1/Vendor/home/HomePageVendor.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileVendor extends StatefulWidget {
  const ProfileVendor({Key? key}) : super(key: key);

  @override
  State<ProfileVendor> createState() => _ProfileVendorState();
}

class _ProfileVendorState extends State<ProfileVendor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: Icon(Icons.reset_tv_rounded),
      //     color: ksecondrycolor,
      //   ),
      //   title: Text(
      //     "Profile",
      //     style: TextStyle(color: ksecondrycolor, fontWeight: FontWeight.bold),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(radius: 70),
              ),
              MaterialButton(
                onPressed: () {},
                child: Text(
                  "Edit",
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10, 40, 10, 20),
                child: Column(
                  children: [
                    TextField(
                      onTap: () {},
                      autofocus: false,
                      decoration: InputDecoration(
                        labelText: "Name",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      autofocus: false,
                      onTap: () {},
                      decoration: InputDecoration(
                        labelText: "Email",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      autofocus: false,
                      onTap: () {},
                      decoration: InputDecoration(
                        labelText: "Phone",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.indigo),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
