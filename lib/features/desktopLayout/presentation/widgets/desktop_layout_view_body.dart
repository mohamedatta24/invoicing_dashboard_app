import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/presentation/widgets/custom_dawar.dart';

class DesktopLayoutViewBody extends StatelessWidget {
  const DesktopLayoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: CustomDawar()),
        Expanded(flex: 3, child: Container(color: Color(0xfffdeedd))),
      ],
    );
  }
}
