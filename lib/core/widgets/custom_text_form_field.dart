import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.hintText});

  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xffAAAAAA),
      style: TextStyle(
        fontWeight: FontWeight.w500,
        color: const Color(0xffAAAAAA),
      ),
      decoration: InputDecoration(
        hintStyle: TextStyle(
          color: Color(0xffAAAAAA),
          fontWeight: FontWeight.w400,
          fontSize: 16.0,
        ),
        hintText: hintText,
        disabledBorder: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        border: buildOutlineInputBorder(),
        hoverColor: const Color(0xffFAFAFA),
        fillColor: const Color(0xffFAFAFA),
        filled: true,
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Color(0xffFAFAFA)),
    );
  }
}
