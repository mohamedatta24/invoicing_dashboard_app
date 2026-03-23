import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/widgets/custom_container.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/all_expenses_header.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/all_expenses_item_list_view.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: const [
          AllExpensesHeader(),
          SizedBox(height: 16.0),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
