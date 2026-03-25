import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      width: isActive ? 38.0 : 8.0,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xff4EB7F2) : const Color(0xffE8E8E8),
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}
