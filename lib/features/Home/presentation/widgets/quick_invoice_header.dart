import 'package:flutter/material.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xff064061),
            fontWeight: FontWeight.w600,
          ),
        ),
    
        Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xffFAFAFA),
          ),
          child: Icon(Icons.add, color: const Color(0xff4EB7F2)),
        ),
      ],
    );
  }
}
