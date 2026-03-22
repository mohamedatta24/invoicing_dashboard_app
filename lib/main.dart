import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/presentation/views/home_view.dart';

void main() {
  runApp(const InvoicingDashboardApp());
}

class InvoicingDashboardApp extends StatelessWidget {
  const InvoicingDashboardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xffF7F9FA),
        fontFamily: "Montserrat",
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
