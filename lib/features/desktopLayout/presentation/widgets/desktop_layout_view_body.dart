import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/all_expenses_quick_invoice_section.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/custom_dawar.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/income_section.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/my_card_section_and_transaction_history_section.dart';

class DesktopLayoutViewBody extends StatelessWidget {
  const DesktopLayoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(flex: 1, child: CustomDawar()),
        SizedBox(width: 20.0),
        Expanded(flex: 2, child: AllExpensesQuickInvoiceSection()),
        SizedBox(width: 20.0),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              MyCardSectionAndTransactionHistorySection(),
              SizedBox(height: 16.0),
              Expanded(child: IncomeSection()),
            ],
          ),
        ),
      ],
    );
  }
}
