import 'package:car1/Constant/Colors.dart';
import 'package:car1/User/Home/HomePageUser.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final String imagePath;
  final String text;

  const CustomContainer({
    Key? key,
    required this.imagePath,
    required this.text,
  }) : super(key: key);

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: ksecondrycolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePageUser()
            ),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              widget.imagePath,
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.3,
            ),
            SizedBox(height: 10),
            Text(
              widget.text,
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePageUser()
                  ),
                );
              },
              child: Text('قراءة المزيد'),
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage extends StatelessWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الصفحة الجديدة'),
      ),
      body: Center(
        child: Text('هذه الصفحة الجديدة'),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomContainer(
            imagePath: 'assets/images/image1.png',
            text: 'نص 1',
          ),
          CustomContainer(
            imagePath: 'assets/images/image2.png',
            text: 'نص 2',
          ),
        ],
      ),
    );
  }
}
