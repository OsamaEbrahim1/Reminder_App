import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String hinttext;
  final TextEditingController mycontroller;
  final String label;
  final Icon myicon;
  final String? Function(String?)? validator;

  const CustomTextForm(
      {super.key,
      required this.hinttext,
      required this.mycontroller,
      required this.label,
      required this.myicon,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: mycontroller,
      decoration: InputDecoration(
        labelText: label,
        hintText: hinttext,
        prefixIcon: myicon,
        hintStyle: const TextStyle(fontSize: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFa0cff4)),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
