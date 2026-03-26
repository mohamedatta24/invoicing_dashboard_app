import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/widgets/custom_container.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/income_chart.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/income_details_list_view.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: const [
          IncomeHeader(),
          SizedBox(height: 16.0),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: IncomeChart()),
                SizedBox(width: 16.0),
                Expanded(child: IncomeDetailsListView()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
