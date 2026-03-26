import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/tabletLayout/presentation/views/widgets/tablet_layout_view_body.dart';

class TabletLayoutView extends StatelessWidget {
  const TabletLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const SafeArea(child: TabletLayoutViewBody()));
  }
}
