import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_syles.dart';
import 'package:responsive_dashboard/widgets/custom_drop_down_menu.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Income', style: AppStyles.styleSemiBold20),
        CustomDropDownMenu()
      ],
    );
  }
}
