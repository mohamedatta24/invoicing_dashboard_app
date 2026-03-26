import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/core/widgets/adaptive_layout.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/widgets/custom_dawar.dart';
import 'package:invoicing_dashboard/features/desktopLayout/presentation/views/desktop_layout_view.dart';
import 'package:invoicing_dashboard/features/mobileLayout/presentation/views/mobile_layout_view.dart';
import 'package:invoicing_dashboard/features/tabletLayout/presentation/views/tablet_layout_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
              elevation: 0.0,
            )
          : null,
      drawer: MediaQuery.sizeOf(context).width < 800 ? const CustomDawar() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayoutView(),
        tabletLayout: (context) => const TabletLayoutView(),
        desktopLayout: (context) => const DesktopLayoutView(),
      ),
    );
  }
}
