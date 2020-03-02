import 'package:flutter/material.dart';
TextFormField buildTextFormField(String lable,[TextInputType type,int length,bool obscure=false]) {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: lable,
      counterText: "",
    ),
    keyboardType:type,
    maxLength: length,
    obscureText: obscure,
    validator: (value) {
      if (value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    },
  );
}