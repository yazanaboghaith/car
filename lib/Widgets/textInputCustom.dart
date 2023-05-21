import 'package:car1/Constant/Colors.dart';
import 'package:flutter/material.dart';

class TextInputCustom extends StatefulWidget {
  String? hint;
  TextInputCustom({this.hint});
  @override
  State<TextInputCustom> createState() => _TextInputCustomState();
}

class _TextInputCustomState extends State<TextInputCustom> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: ktherdeycolor),
      autofocus: false,
      obscureText: widget.hint == "Password" ? _obscureText : false,
      decoration: InputDecoration(
        //hintText: "Enter user Name",
        fillColor: kprimareycolor, // لون داخل المربع
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: ksecondrycolor, width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: ksecondrycolor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(color: ksecondrycolor),
        ),
        labelText: widget.hint!,
        labelStyle: TextStyle(color: ktherdeycolor),

        suffixIcon: widget.hint == "Password"
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: ksecondrycolor,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
      ),
    );
  }
}
