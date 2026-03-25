import 'package:flutter/material.dart';

class TransactionHistoryModel {
  final String title;
  final String subTitle;
  final String price;
  final Color? color;

  const TransactionHistoryModel({
    required this.title,
    required this.subTitle,
    required this.price,
    this.color,
  });
}
