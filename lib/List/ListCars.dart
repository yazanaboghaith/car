import 'package:flutter/material.dart';

class ListCars extends StatelessWidget {
  final Widget child;

  ListCars({required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [child],
      ),
    );
  }
}
