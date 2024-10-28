import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';
import 'package:responsive_dashboard/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        IncomeSectionHeader(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: IncomeChart()),
            Expanded(child: IncomeDetails()),
          ],
        )
      ],
    );
  }
}
