import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_syles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
          titlePositionPercentageOffset: touchedIndex == 0 ? 1.5 : null,
          color: const Color(0xFF208BC7),
          titleStyle: AppStyles.styleBold16(context)
              .copyWith(color: touchedIndex == 0 ? null : Colors.white),
          title: touchedIndex == 0 ? 'Design service' : '40%',
          value: 40,
          radius: touchedIndex == 0 ? 40 : 30,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: touchedIndex == 1 ? 2.6 : null,
          color: const Color(0xFF4DB7F2),
          title: touchedIndex == 1 ? 'Design product' : '25%',
          titleStyle: AppStyles.styleBold16(context)
              .copyWith(color: touchedIndex == 1 ? null : Colors.white),
          value: 25,
          radius: touchedIndex == 1 ? 40 : 30,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: touchedIndex == 2 ? 1.5 : null,
          color: const Color(0xFF064060),
          title: touchedIndex == 2 ? 'Product royalti' : '20%',
          titleStyle: AppStyles.styleBold16(context)
              .copyWith(color: touchedIndex == 2 ? null : Colors.white),
          value: 20,
          radius: touchedIndex == 2 ? 40 : 30,
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: touchedIndex == 3 ? 1.5 : null,
          color: const Color(0xFFE2DECD),
          title: touchedIndex == 3 ? 'Other' : '22%',
          value: 22,
          titleStyle: AppStyles.styleBold16(context)
              .copyWith(color: touchedIndex == 3 ? null : Colors.white),
          radius: touchedIndex == 3 ? 40 : 30,
        ),
      ],
    );
  }
}
