import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/widgets/adaptive_layout.dart';
import 'package:invoicing_dashboard/features/desktopLayout/presentation/views/desktop_layout_view.dart';
import 'package:invoicing_dashboard/features/tabletLayout/presentation/views/tablet_layout_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => Container(),
        tabletLayout: (context) => const TabletLayoutView(),
        desktopLayout: (context) => const DesktopLayoutView(),
      ),
    );
  }
}
