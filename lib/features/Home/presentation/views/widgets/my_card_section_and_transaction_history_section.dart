import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/widgets/custom_container.dart';
import 'package:invoicing_dashboard/core/widgets/custom_divider.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/my_cards_section.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/transaction_history.dart';

class MyCardSectionAndTransactionHistorySection extends StatelessWidget {
  const MyCardSectionAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: const [
          MyCardSection(),
          SizedBox(height: 20.0),
          CustomDivider(),
          SizedBox(height: 20.0),
          TransactionHistorySection(),
        ],
      ),
    );
  }
}