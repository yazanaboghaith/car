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
      obscureText:
          widget.hint == "password" || widget.hint == "Confirm Password"
              ? _obscureText
              : false,
      decoration: InputDecoration(
        labelText: widget.hint!,
        prefixIcon: Icon(widget.icon),
        suffixIcon:
            widget.hint == "Password" || widget.hint == "Confirm Password"
                ? IconButton(
                    icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
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
