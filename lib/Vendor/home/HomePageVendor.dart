import 'package:car1/Vendor/Manager/Cars/HomePageCar.dart';
import 'package:car1/Vendor/Manager/Products/HomePageProduct.dart';
import 'package:car1/Vendor/Manager/Services/JomePageServices.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';

import 'package:car1/Constant/Colors.dart';

import 'package:car1/Vendor/profile/ProfileVendor.dart';

class HomePageVendor extends StatefulWidget {
  const HomePageVendor({Key? key}) : super(key: key);

  @override
  State<HomePageVendor> createState() => _HomePageVendorState();
}

class _HomePageVendorState extends State<HomePageVendor> {
  int? currentPage;
  @override
  void initState() {
    currentPage = 1;
    // TODO: implement initState
    super.initState();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: ksecondrycolor),
          onPressed: _openDrawer,
        ),
      ),
      resizeToAvoidBottomInset: false,
      drawer: Drawer(
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
      ),
      body: Container(
        child: Center(
          child: _getPage(context, currentPage!),
        ),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
            iconData: Icons.design_services_sharp,
            title: "services",
          ),
          TabData(
            iconData: Icons.home,
            onclick: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileVendor()),
              );
            },
            title: "Home",
          ),
          TabData(
            iconData: Icons.shopping_cart,
            title: "Basket",
          ),
        ],
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  Widget _getPage(BuildContext context, int page) {
    switch (page) {
      case 1:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: () {}, child: Text("ndkcnskdnsknvks")),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileVendor()),
                );
              },
              child: Container(
                // تخصيص تصميم واجهة المستخدم للحالة الثانية
                decoration: BoxDecoration(
                  color: Colors.blue, // يمكنك تغيير اللون هنا
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.white, // يمكنك تغيير لون الأيقونة هنا
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white, // يمكنك تغيير لون النص هنا
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // اضف هنا واجهة المستخدم للحالة الثالثة
          ],
        );
      case 0:
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePageServices()));
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
      case 2:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // اضف هنا واجهة المستخدم للحالة الأولى
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileVendor()),
                );
              },
              child: Container(
                // تخصيص تصميم واجهة المستخدم للحالة الثانية
                decoration: BoxDecoration(
                  color: Colors.blue, // يمكنك تغيير اللون هنا
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.white, // يمكنك تغيير لون الأيقونة هنا
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white, // يمكنك تغيير لون النص هنا
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // اضف هنا واجهة المستخدم للحالة الثالثة
          ],
        );

      default:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        );
    }
  }
}

// Row(
//                 children: [
//                   ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => AddCar()));
//                       },
//                       child: Text(
//                         "Add Car",
//                         style: (TextStyle(
//                             color: kprimareycolor,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20)),
//                       )),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * 0.15,
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => EditCar()));
//                     },
//                     child: Text(
//                       "Edite Car",
//                       style: (TextStyle(
//                           color: kprimareycolor,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20)),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.1,
//               ),
//               Row(
//                 children: [
//                   ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => AddProduct()));
//                       },
//                       child: Text(
//                         "Add Product",
//                         style: (TextStyle(
//                             color: kprimareycolor,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20)),
//                       )),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * 0.04,
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => EditProduct()));
//                     },
//                     child: Text(
//                       "Edit Product",
//                       style: (TextStyle(
//                           color: kprimareycolor,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20)),
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: MediaQuery.of(context).size.height * 0.1,
//               ),
//               Row(
//                 children: [
//                   ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => AddServices()));
//                       },
//                       child: Text(
//                         "Add Services",
//                         style: (TextStyle(
//                             color: kprimareycolor,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20)),
//                       )),
//                   SizedBox(
//                     width: MediaQuery.of(context).size.width * 0.04,
//                   ),
//                   ElevatedButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => EditServices()));
//                     },
//                     child: Text(
//                       "Edite Services",
//                       style: (TextStyle(
//                           color: kprimareycolor,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 20)),
//                     ),
//                   ),
//                 ],
//               ),
