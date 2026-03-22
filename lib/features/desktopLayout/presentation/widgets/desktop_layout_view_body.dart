import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/all_expenses.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/custom_dawar.dart';

class DesktopLayoutViewBody extends StatelessWidget {
  const DesktopLayoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 2, child: CustomDawar()),
        const SizedBox(width: 20.0),
        const Expanded(flex: 3, child: AllExpenses()),
      ],
    );
  }
}
