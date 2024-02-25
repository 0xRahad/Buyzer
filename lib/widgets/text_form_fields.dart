import 'package:flutter/material.dart';

class MyTextFormFields extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final IconData? prefixIcon;
  final controller;

  MyTextFormFields({
    required this.hintText,
    required this.obscureText,
    this.prefixIcon,
    this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          fillColor: Colors.grey[200],
          filled: true,
          hintText: hintText,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null, // Add icon if provided
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
