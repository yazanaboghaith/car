import 'package:flutter/material.dart';

class HomePageServices extends StatelessWidget {
  const HomePageServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          child: Row(
            children: [
              Image(
                image: AssetImage(
                  "photo/background.png",
                ),
                height: MediaQuery.of(context).size.height * 0.16,
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
              ),
              Column(
                children: [
                  Text("Edit Cars"),
                  SizedBox(
                    height: 45,
                  ),
                  Text(" Cars")
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Row(
            children: [
              Image(
                image: AssetImage(
                  "photo/background.png",
                ),
                height: 10,
                width: 10,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Card(
          child: Row(
            children: [
              Image(
                image: AssetImage(
                  "photo/background.png",
                ),
                height: 10,
                width: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
