import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/all_expenses_quick_invoice_section.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/custom_dawar.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/my_cards_section.dart';

class DesktopLayoutViewBody extends StatelessWidget {
  const DesktopLayoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: CustomDawar()),
        const SizedBox(width: 20.0),
        const Expanded(flex: 2, child: AllExpensesQuickInvoiceSection()),
        const SizedBox(width: 20.0),
        const Expanded(flex: 1, child: MyCardSection()),
      ],
    );
  }
}
