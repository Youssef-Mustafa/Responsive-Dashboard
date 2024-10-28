import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_syles.dart';
import 'package:responsive_dashboard/widgets/transaction_header.dart';
import 'package:responsive_dashboard/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHeader(),
        const SizedBox(height: 20),
        Text(
          '13 April 2022',
          style:
              AppStyles.styleMedium16.copyWith(color: const Color(0XFFAAAAAA)),
        ),
        const SizedBox(height: 16),
        const TransactionHistoryListView()
      ],
    );
  }
}
