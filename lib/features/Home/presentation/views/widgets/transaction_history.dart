import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/transaction_history_header.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/transaction_history_item_list_view.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TransactionHistoryHeader(),
        SizedBox(height: 20.0),
        Text(
          "13 April 2022",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Color(0xffAAAAAA),
          ),
        ),
        SizedBox(height: 16.0),

        TransactionHistoryItemListView(),
      ],
    );
  }
}
