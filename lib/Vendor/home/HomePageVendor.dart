import 'package:car1/Vendor/Manager/Additems.dart';
import 'package:car1/Vendor/Manager/Cars/HomePageCar.dart';

import 'package:car1/Vendor/Manager/Products/HomePageProduct.dart';
import 'package:car1/Vendor/Manager/Services/JomePageServices.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:car1/Widgets/ListCars.dart';
import 'package:car1/Widgets/TextInputForAll.dart';
import 'package:car1/Constant/Colors.dart';
import 'package:car1/Vendor/profile/ProfileVendor.dart';

class HomePageVendor extends StatefulWidget {
  const HomePageVendor({Key? key}) : super(key: key);

  @override
  State<HomePageVendor> createState() => _HomePageVendorState();
}

class _HomePageVendorState extends State<HomePageVendor> {
  int? currentPage;
  List<String> Listcars = [
    "Kia rio",
    "Kia cerato",
    "Kia optima",
    "Kia forte",
    "Kia soll",
    "Marceds 300",
    "Marceds 500",
    "Marceds gclass",
    "Audi A4",
    "Audi A6",
    "Audi A8",
    "Hyundai verna",
    "Hyundai accents",
    "Hyundai accourd",
    "Mitsubishi glx",
    "Mitsubishi lancer",
    "Sham"
  ];
  List<String> ListProducts = ["glass space", "light", "Mirrors"];
  List<String> ListServices = ["", "", ""];
  @override
  void initState() {
    currentPage = 1;
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
        initialSelection: 1,
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
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextInputForAll(
                        hint: "Add your search",
                        icon: Icons.search,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: IconButton(
                        icon: Icon(
                          Icons.add,
                          color: kprimareyiconcolor,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Addgoods()));
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Cars :",
                  style: TextStyle(
                      color: kprimareycolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 1.5,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Listcars.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListCars(
                        child: Text(
                          Listcars[index],
                          style: TextStyle(
                            color: kprimareycolor,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Products :",
                  style: TextStyle(
                      color: kprimareycolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 1.5,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: ListProducts.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListCars(
                        child: Text(
                          ListProducts[index],
                          style: TextStyle(
                            color: kprimareycolor,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Services :",
                  style: TextStyle(
                      color: kprimareycolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black),
                        height: MediaQuery.of(context).size.height * 0.17,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Center(
                          child: Text(
                            "Crane",
                            style: TextStyle(color: kprimareycolor),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black),
                        height: MediaQuery.of(context).size.height * 0.17,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Center(
                          child: Text(
                            "car wash",
                            style: TextStyle(color: kprimareycolor),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.black),
                        height: MediaQuery.of(context).size.height * 0.17,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Center(
                          child: Text(
                            "Fuel filling",
                            style: TextStyle(color: kprimareycolor),
                          ),
                        )),
                  ),
                ],
              ),
            ],
          ),
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
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      size: 40,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white,
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
