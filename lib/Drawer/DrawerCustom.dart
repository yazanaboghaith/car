import 'package:car1/Constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: ksecondrycolor,
      width: MediaQuery.of(context).size.width * 0.7,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 80, 1, 1),
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                "Profile",
                style: TextStyle(color: kprimareycolor),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Setting",
                style: TextStyle(color: kprimareycolor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
