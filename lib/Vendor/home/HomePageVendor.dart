import 'package:car1/Drawer/DrawerCustom.dart';
import 'package:car1/Vendor/home/HomePageCart.dart';
import 'package:car1/Vendor/home/HomePagePrimary.dart';
import 'package:car1/Vendor/home/HomePageServices.dart';
import 'package:fancy_bottom_navigation_2/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class HomePageVendor extends StatefulWidget {
  const HomePageVendor({Key? key}) : super(key: key);

  @override
  State<HomePageVendor> createState() => _HomePageVendorState();
}

class _HomePageVendorState extends State<HomePageVendor> {
  int currentPage = 1;
  List<Widget> page = [HomePageServices(), HomePagePrimary(), HomePageCart()];
  @override
  void initState() {
    currentPage = 1;
    super.initState();
  }

  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      drawer: DrawerCustom(),
      body: page[currentPage],
      bottomNavigationBar: FancyBottomNavigation(
        initialSelection: 1,
        tabs: [
          TabData(
            iconData: Icons.design_services_sharp,
            title: "services",
          ),
          TabData(
            iconData: Icons.home,
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
}
