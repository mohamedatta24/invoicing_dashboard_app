import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/all_expenses_quick_invoice_section.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/custom_dawar.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/income_section.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/my_card_section_and_transaction_history_section.dart';

class TabletLayoutViewBody extends StatelessWidget {
  const TabletLayoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: CustomDawar()),
        SizedBox(width: 20.0),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesQuickInvoiceSection(),
                SizedBox(height: 20.0),
                MyCardSectionAndTransactionHistorySection(),
                SizedBox(height: 20.0),
                IncomeSection(),
              ],
            ),
          ),
        ),
        SizedBox(width: 20.0),
      ],
    );
  }
}
