import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          touchedIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(
            () {},
          );
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          color: const Color(0xFF208BC7),
          value: 40,
          showTitle: false,
          radius: touchedIndex == 0 ? 60 : 50,
        ),
        PieChartSectionData(
          color: const Color(0xFF4DB7F2),
          value: 25,
          showTitle: false,
          radius: touchedIndex == 1 ? 60 : 50,
        ),
        PieChartSectionData(
          color: const Color(0xFF064060),
          value: 20,
          showTitle: false,
          radius: touchedIndex == 2 ? 60 : 50,
        ),
        PieChartSectionData(
          color: const Color(0xFFE2DECD),
          value: 22,
          showTitle: false,
          radius: touchedIndex == 3 ? 60 : 50,
        ),
      ],
    );
  }
}
