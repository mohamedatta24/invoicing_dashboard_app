import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/data/models/income_details_model.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key, required this.incomeDetailsModel});

  final IncomeDetailsModel incomeDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeDetailsModel.title,
        style: const TextStyle(
          fontWeight: FontWeight.w400,
          color: Color(0xff064061),
          fontSize: 16.0,
        ),
      ),
      trailing: Text(
        incomeDetailsModel.value,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          color: Color(0xff208CC8),
          fontSize: 16.0,
        ),
      ),
    );
  }
}
