import 'package:flutter/material.dart';

class ChampText extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const ChampText({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade200),
        ), // OutlineInputBorder
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ), // OutlineInputBorder
        fillColor: Colors.grey[100],
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black),
      ), // InputDecoration
    ); // TextField
  }
}
