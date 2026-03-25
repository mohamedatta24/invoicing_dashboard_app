import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Latest Transaction",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Color(0xff064061),
          ),
        ),
        SizedBox(height: 12.0),
        LatestTransactionListView(),
      ],
    );
  }
}
