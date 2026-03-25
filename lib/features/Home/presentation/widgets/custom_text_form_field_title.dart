import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/widgets/custom_text_form_field.dart';

class CustomTextFormFieldTitle extends StatelessWidget {
  const CustomTextFormFieldTitle({
    super.key,
    required this.title,
    required this.hintText,
  });
  final String title;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Color(0xff064061),
            fontSize: 16.0,
          ),
        ),
        const SizedBox(height: 12.0),
        CustomTextFormField(hintText: hintText),
      ],
    );
  }
}
