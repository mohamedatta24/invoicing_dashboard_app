import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/widgets/custom_container.dart';
import 'package:invoicing_dashboard/core/widgets/custom_divider.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/all_expenses_quick_invoice_section.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/custom_dawar.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/my_cards_section.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/transaction_history.dart';

class TabletLayoutViewBody extends StatelessWidget {
  const TabletLayoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDawar()),
        SizedBox(width: 20.0),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesQuickInvoiceSection(),
                SizedBox(height: 20.0),
                CustomContainer(
                  child: Column(
                    children: [
                      MyCardSection(),
                      SizedBox(height: 20.0),
                      CustomDivider(),
                      SizedBox(height: 20.0),
                      TransactionHistory(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 20.0),
      ],
    );
  }
}
