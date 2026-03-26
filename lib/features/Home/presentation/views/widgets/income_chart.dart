import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  final List<Color> colors = const [
    Color(0xff208CC8),
    Color(0xff4EB7F2),
    Color(0xff064061),
    Color.fromARGB(255, 207, 4, 180),
  ];

  final List<String> titles = const ["40%", "50%", "60%", "70%"];

  @override
  Widget build(BuildContext context) {
    return PieChart(getChartData());
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
      sections: List.generate(colors.length, (index) {
        return PieChartSectionData(
          radius: activeIndex == index ? 40 : 50,
          color: colors[index],
          title: titles[index],
          titleStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
          ),
        );
      }),
    );
  }
}
