import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:invoicing_dashboard/features/Home/data/models/income_chart_model.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  final List<IncomeChartModel> items = const [
    IncomeChartModel(title: "40%", color: Color(0xff208CC8)),
    IncomeChartModel(title: "25%", color: Color(0xff4EB7F2)),
    IncomeChartModel(title: "20%", color: Color(0xff064061)),
    IncomeChartModel(title: "22%", color: Color.fromARGB(255, 207, 4, 180)),
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse) {
          setState(() {
            activeIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          });
        },
      ),
      sections: List.generate(items.length, (index) {
        return PieChartSectionData(
          radius: activeIndex == index ? 50 : 40,
          color: items[index].color,
          title: items[index].title,
          titleStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
          ),
        );
      }),
    );
  }
}
