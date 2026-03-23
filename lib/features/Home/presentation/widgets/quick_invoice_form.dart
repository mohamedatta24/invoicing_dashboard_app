import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/widgets/custom_button.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/custom_text_form_field_title.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Row(
          children: [
            Expanded(
              child: CustomTextFormFieldTitle(
                title: "Customer name",
                hintText: "Type customer name",
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: CustomTextFormFieldTitle(
                title: "Customer Email",
                hintText: "Type customer email",
              ),
            ),
          ],
        ),
        SizedBox(height: 24.0),
        Row(
          children: [
            Expanded(
              child: CustomTextFormFieldTitle(
                title: "Item name",
                hintText: "Type Item name",
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: CustomTextFormFieldTitle(
                title: "Item mount",
                hintText: "USD",
              ),
            ),
          ],
        ),
        SizedBox(height: 24.0),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                text: "Add more details",
                colorBackground: Color(0xffffffff),
                colorText: Color(0xff4EB7F2),
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(child: CustomButton(text: "Send Money")),
          ],
        ),
      ],
    );
  }
}
