import 'package:car1/Products/AddCar.dart';
import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key? key}) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  String _selectedOption = 'Name Product';
  final List<String> _product = ['Car', 'spare parts'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Add Product",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                  color: Colors.blueGrey,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      _selectedOption,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  PopupMenuButton<String>(
                    icon: Icon(Icons.arrow_drop_down),
                    offset: Offset(0, 60),
                    onSelected: (String value) {
                      if (_selectedOption == 'Car') {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AddCar()));
                      } else if (_selectedOption == 'spare parts') {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddProduct()));
                      }
                      setState(() {
                        _selectedOption = value;
                      });
                    },
                    itemBuilder: (BuildContext context) {
                      return _product.map((String value) {
                        return PopupMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList();
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            Column(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
