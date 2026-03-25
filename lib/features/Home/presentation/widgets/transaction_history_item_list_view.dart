import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/data/models/transaction_history_model.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/transaction_history_item.dart';

class TransactionHistoryItemListView extends StatelessWidget {
  const TransactionHistoryItemListView({super.key});
  final List<TransactionHistoryModel> items = const [
    TransactionHistoryModel(
      title: "Cash Withdrawal",
      subTitle: "13 Apr, 2022",
      price: "\$20,129",
      color: Color(0xffF3735E),
    ),
    TransactionHistoryModel(
      title: "Landing Page project",
      subTitle: "13 Apr, 2022 at 3:30 PM",
      price: "\$2,000",
    ),
    TransactionHistoryModel(
      title: "Juni Mobile App project",
      subTitle: "13 Apr, 2022 at 3:30 PM",
      price: "\$20,129",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(items.length, (index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: TransactionHistoryItem(transactionHistoryModel: items[index]),
        );
      }),
    );
  }
}
