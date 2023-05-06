import 'package:car1/Constant/Colors.dart';
import 'package:flutter/material.dart';

class textInputSignUp extends StatefulWidget {
  String? hint;
  IconData? icon;
  textInputSignUp({this.hint, this.icon});

  @override
  State<textInputSignUp> createState() => _textInputSignUpState();
}

class _textInputSignUpState extends State<textInputSignUp> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: ksecondrycolor,
      obscureText:
          widget.hint == "password" || widget.hint == "Confirm Password"
              ? _obscureText
              : false,
      decoration: InputDecoration(
        filled: true, //
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
        prefixIcon: Icon(
          widget.icon,
          color: ksecondrycolor,
        ),
        suffixIcon:
            widget.hint == "Password" || widget.hint == "Confirm Password"
                ? IconButton(
                    icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                    color: ksecondrycolor,
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
