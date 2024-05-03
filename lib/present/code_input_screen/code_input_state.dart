import 'package:flutter/material.dart';

class AuthCodeTextField extends StatelessWidget {
  final FocusNode focusNode;
  final FocusNode nextFocusNode;

  AuthCodeTextField({required this.focusNode, required this.nextFocusNode});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: TextField(
        focusNode: focusNode,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        onChanged: (value) {
          if (value.length == 1) {
            focusNode.unfocus();
            FocusScope.of(context).requestFocus(nextFocusNode);
          }
        },
        decoration: InputDecoration(
          counterText: "",
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }
}