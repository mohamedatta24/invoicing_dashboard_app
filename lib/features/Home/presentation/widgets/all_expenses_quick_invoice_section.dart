import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/all_expenses.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/quick_invoice.dart';

class AllExpensesQuickInvoiceSection extends StatelessWidget {
  const AllExpensesQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [AllExpenses(), SizedBox(height: 24.0), QuickInvoice()],
    );
  }
}
