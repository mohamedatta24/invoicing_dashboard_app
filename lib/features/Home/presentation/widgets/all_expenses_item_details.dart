import 'package:flutter/material.dart';

class AllExpensesItemDetails extends StatelessWidget {
  const AllExpensesItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Balance",
          style: TextStyle(
            fontSize: 16.0,
            color: Color(0xffFFFFFF),
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "April 2022",
          style: TextStyle(
            color: Color(0xffFAFAFA),
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          "\$20,129",
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
