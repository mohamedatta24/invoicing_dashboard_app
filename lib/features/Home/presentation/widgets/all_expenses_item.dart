import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/all_expenses_item_details.dart';

import 'package:invoicing_dashboard/features/Home/presentation/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AllExpensesItemHeader(),
          const SizedBox(height: 32),
          const AllExpensesItemDetails(),
        ],
      ),
    );
  }
}
