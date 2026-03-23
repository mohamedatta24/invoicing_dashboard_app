import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.colorBackground,
    this.colorText,
  });
  final Color? colorBackground;
  final Color? colorText;

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        color: colorBackground ?? const Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(width: 1, color: Color(0xffF1F1F1)),
      ),

      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: colorText ?? Color(0xffffffff),
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
