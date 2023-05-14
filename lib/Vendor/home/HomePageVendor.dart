import 'package:car1/Constant/Colors.dart';
import 'package:car1/Products/AddProduct.dart';
import 'package:car1/User/Home/HomePageUser.dart';
import 'package:car1/Vendor/profile/ProfileVendor.dart';
import 'package:car1/Widgets/CustomContainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomePageVendor extends StatefulWidget {
  const HomePageVendor({Key? key}) : super(key: key);

  @override
  State<HomePageVendor> createState() => _HomePageVendorState();
}

class _HomePageVendorState extends State<HomePageVendor> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu, color: kbasetextcolor),
            onPressed: _openDrawer,
          ),
          title: Text(
            "Home page",
            style: TextStyle(fontSize: 20, color: kbasetextcolor),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: ksecondrycolor,
              ),
            ),
          ],
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileVendor()),
                    );
                  },
                  child: Text(
                    "Profile",
                    style: TextStyle(color: kprimareytextcolor),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Setting",
                    style: TextStyle(color: kprimareytextcolor),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kprimareycolor,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: Icon(
                                Icons.search,
                                color: ksecondrycolor,
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                style: TextStyle(color: kbasetextcolor),
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor:
                                        kprimareycolor, // لون داخل المربع
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(4),
                                      borderSide: BorderSide(
                                          color: kprimareycolor, width: 1),
                                    ),
                                    hintText: 'Search',
                                    hintStyle:
                                        TextStyle(color: ksecondrytextcolor)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => AddProduct()));
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.05,
                                  child: Center(
                                    child: Text(
                                      "Add Product",
                                      style: TextStyle(
                                          color: kprimareytextcolor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: ksecondrycolor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 30, 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 30, 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomContainer(
                          imagePath: 'photo/background.png',
                          text: "heeeeeeeeeelo"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      CustomContainer(
                          imagePath: 'photo/background.png',
                          text: "heeeeeeeeeelo"),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 30, 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePageUser()));
                        },
                        child: CustomContainer(
                            imagePath: 'photo/background.png',
                            text: "heeeeeeeeeelo"),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      CustomContainer(
                          imagePath: 'photo/background.png',
                          text: "heeeeeeeeeelo"),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 30, 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomContainer(
                          imagePath: 'photo/background.png',
                          text: "heeeeeeeeeelo"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.1,
                      ),
                      CustomContainer(
                          imagePath: 'photo/background.png',
                          text: "heeeeeeeeeelo"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.manage_accounts),
                onPressed: () {},
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {},
              ),
            ],
          ),
          shape: CircularNotchedRectangle(),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: ksecondrycolor,
          onPressed: () {},
          child: Icon(
            Icons.home,
            color: kprimareycolor,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
      Positioned(
        bottom: 18.0, // تعديل الارتفاع من الأسفل حسب الحاجة
        right: 18.0, // تعديل المسافة من اليمين حسب الحاجة
        child: Builder(
          builder: (BuildContext context) {
            final bool keyboardOpen =
                MediaQuery.of(context).viewInsets.bottom > 0;
            return AnimatedContainer(
              duration: Duration(milliseconds: 150),
            );
          },
        ),
      ),
    ]);
  }
}
