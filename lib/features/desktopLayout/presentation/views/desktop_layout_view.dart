import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/desktopLayout/presentation/widgets/desktop_layout_view_body.dart';

class DesktopLayoutView extends StatelessWidget {
  const DesktopLayoutView({super.key});
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: const DesktopLayoutViewBody()));
  }
}
