import 'package:flutter/material.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "All Expenses",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: Color(0xff064061),
          ),
        ),

        Container(
          padding: const EdgeInsets.all(12),
          decoration: ShapeDecoration(
            color: const Color(0xffffffff),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: const Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              const Text(
                'Monthly',
                style: TextStyle(
                  color: Color(0xFF064060),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 18.0),
              Transform.rotate(
                angle: -1.57,
                child: Icon(
                  Icons.arrow_back_ios_sharp,
                  color: const Color(0xff064061),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
