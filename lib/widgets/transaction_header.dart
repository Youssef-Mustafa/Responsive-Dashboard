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
        Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20(context),
        ),
        Text('See all',
            style: AppStyles.styleMedium16(context).copyWith(
              color: const Color(0XFF4EB7F2),
            ))
      ],
    );
  }
}
