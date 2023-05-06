import 'package:car1/Products/AddProduct.dart';
import 'package:car1/Products/DeleteProduct.dart';
import 'package:car1/Products/EditProduct.dart';
import 'package:car1/Products/ManageProduct.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageVendor extends StatefulWidget {
  const HomePageVendor({Key? key}) : super(key: key);

  @override
  State<HomePageVendor> createState() => _HomePageVendorState();
}

class _HomePageVendorState extends State<HomePageVendor> {
  final List<String> _products =
      List.generate(50, (index) => 'Product ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddProduct()),
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.08,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color.fromARGB(255, 110, 118, 192),
                            Color.fromARGB(255, 62, 134, 198),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Add Product",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _products.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_products[index]),
                  trailing: PopupMenuButton<String>(
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry<String>>[
                        PopupMenuItem<String>(
                          value: 'edit',
                          child: Text('Edit'),
                        ),
                        PopupMenuItem<String>(
                          value: 'delete',
                          child: Text('Delete'),
                        ),
                      ];
                    },
                    onSelected: (String value) {
                      if (value == 'edit') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditProduct()));
                      } else if (value == 'delete') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DeleteProduct()));
                      }
                    },
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ManageProduct()));
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
