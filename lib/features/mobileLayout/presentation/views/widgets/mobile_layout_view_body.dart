import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/all_expenses_quick_invoice_section.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/income_section.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/my_card_section_and_transaction_history_section.dart';

class MobileLayoutViewBody extends StatelessWidget {
  const MobileLayoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: const [
            AllExpensesQuickInvoiceSection(),
            SizedBox(height: 16.0),
            MyCardSectionAndTransactionHistorySection(),
            SizedBox(height: 16.0),
            IncomeSection(),
          ],
        ),
      ),
    );
  }
}
