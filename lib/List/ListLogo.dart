import 'package:flutter/material.dart';

class ListLogo extends StatelessWidget {
  final Widget child;

  ListLogo({required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(150)),
      child: Column(
        children: [child],
      ),
    );
  }
}
