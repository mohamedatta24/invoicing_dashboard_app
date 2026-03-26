import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/mobileLayout/presentation/views/widgets/mobile_layout_view_body.dart';

class MobileLayoutView extends StatelessWidget {
  const MobileLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const SafeArea(child: MobileLayoutViewBody()));
  }
}
