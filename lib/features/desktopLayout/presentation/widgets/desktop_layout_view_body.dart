import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/all_expenses.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/custom_dawar.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/quick_invoice.dart';

class DesktopLayoutViewBody extends StatelessWidget {
  const DesktopLayoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 2, child: CustomDawar()),
        const SizedBox(width: 20.0),
        const Expanded(
          flex: 3,
          child: Column(
            children: [
              AllExpenses(),
              SizedBox(height: 24.0),
              QuickInvoice(),
              SizedBox(height: 24.0),
            ],
          ),
        ),
      ],
    );
  }
}
