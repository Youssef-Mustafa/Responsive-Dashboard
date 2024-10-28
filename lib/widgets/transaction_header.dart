import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_syles.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20,
        ),
        Text('See all',
            style: AppStyles.styleMedium16.copyWith(
              color: const Color(0XFF4EB7F2),
            ))
      ],
    );
  }
}
