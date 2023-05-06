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
      autofocus: false,
      obscureText: widget.hint == "Password" ? _obscureText : false,
      decoration: InputDecoration(
        labelText: widget.hint!,
        suffixIcon: widget.hint == "Password"
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.indigo),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
