import 'package:car1/Constant/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputForAll extends StatefulWidget {
  String? hint;
  String? lable;
  IconData? icon;
  TextInputType? type;
  TextEditingController? controller;
  TextInputForAll(
      {this.hint, this.type, this.lable, this.controller, this.icon});

  @override
  State<TextInputForAll> createState() => _TextInputForAllState();
}

class _TextInputForAllState extends State<TextInputForAll> {
  bool secure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.hint == "Enter your Password" ? secure : false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: ((value) {
        if (value == null || value.isEmpty) {
          return 'Required field';
        }
      }),
      controller: widget.controller,
      style: TextStyle(
        color: kprimareycolor,
        fontSize: 14,
      ),
      keyboardType: widget.type,
      decoration: InputDecoration(
          prefixIcon: Icon(widget.icon, color: kprimareyiconcolor),
          suffixIcon: widget.hint == "Enter your Password"
              ? GestureDetector(
                  child: Icon(Icons.remove_red_eye,
                      color: secure ? Colors.grey : Colors.blue),
                  onTap: () {
                    setState(() {
                      secure = !secure;
                    });
                  },
                )
              : null,
          labelText: widget.lable,
          labelStyle: TextStyle(color: Color.fromARGB(255, 126, 129, 132)),
          filled: true,
          fillColor: Colors.white,
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          errorStyle: TextStyle(color: Colors.red),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.blueAccent, width: 2),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: kprimareycolor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: kprimareycolor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: kprimareycolor,
            ),
          ),
          hintText: "${widget.hint}",
          hintStyle: TextStyle(color: Color.fromARGB(255, 126, 129, 132))),
    );
  }
}
