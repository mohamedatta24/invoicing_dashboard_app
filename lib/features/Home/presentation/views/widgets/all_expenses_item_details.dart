import 'package:flutter/material.dart';

class AllExpensesItemDetails extends StatelessWidget {
  const AllExpensesItemDetails({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.selectIndex,
  });

  final String title;
  final String subTitle;
  final String price;

  final bool selectIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 16.0,
            color: selectIndex
                ? const Color(0xffFFFFFF)
                : const Color(0xff064061),
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          subTitle,
          style: TextStyle(
            color: selectIndex
                ? const Color(0xffFAFAFA)
                : const Color(0xffAAAAAA),
            fontSize: 14.0,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          price,
          style: TextStyle(
            color: selectIndex
                ? const Color(0xffFFFFFF)
                : const Color(0xff4EB7F2),
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
