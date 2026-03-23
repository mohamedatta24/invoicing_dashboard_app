import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/widgets/custom_container.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/latest_transaction.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          QuickInvoiceHeader(),
          SizedBox(height: 32.0),
          LatestTransaction(),
        ],
      ),
    );
  }
}
