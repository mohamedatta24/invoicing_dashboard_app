import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/data/models/transaction_history_model.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({
    super.key,
    required this.transactionHistoryModel,
  });

  final TransactionHistoryModel transactionHistoryModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: ListTile(
        title: Text(
          transactionHistoryModel.title,
          style: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
            color: Color(0xff064061),
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Text(
            transactionHistoryModel.subTitle,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
              color: Color(0xffAAAAAA),
            ),
          ),
        ),
        trailing: Text(
          transactionHistoryModel.price,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w600,
            color: transactionHistoryModel.color ?? const Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}
