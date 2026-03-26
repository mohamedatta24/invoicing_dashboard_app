import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/data/models/income_details_model.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/income_details.dart';

class IncomeDetailsListView extends StatelessWidget {
  const IncomeDetailsListView({super.key});

  final List<IncomeDetailsModel> items = const [
    IncomeDetailsModel(
      color: Color(0xff208CC8),
      title: "Design service",
      value: "40%",
    ),
    IncomeDetailsModel(
      color: Color(0xff4EB7F2),
      title: "Design product",
      value: "25%",
    ),
    IncomeDetailsModel(
      color: Color(0xff064061),
      title: "Product royalti",
      value: "20%",
    ),
    IncomeDetailsModel(
      color: Color.fromARGB(255, 207, 4, 180),
      title: "Other",
      value: "22%",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => IncomeDetails(incomeDetailsModel: e)).toList(),
    );
  }
}
