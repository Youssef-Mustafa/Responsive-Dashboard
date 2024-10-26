import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_syles.dart';
import 'package:responsive_dashboard/widgets/latest_transaction_list_view.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.styleMedium16,
        ),
        SizedBox(height: 16),
        LatestTransactionListView()
      ],
    );
  }
}