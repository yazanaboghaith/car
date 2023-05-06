import 'package:flutter/material.dart';

class DeleteProduct extends StatefulWidget {
  const DeleteProduct({Key? key}) : super(key: key);

  @override
  State<DeleteProduct> createState() => _DeleteProductState();
}

class _DeleteProductState extends State<DeleteProduct> {
  // String _deleteproduct='Name Product';
  // final List<String> _delete=[_deleteproduct];

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
          "Delete Product",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      // body:
    );
  }
}
