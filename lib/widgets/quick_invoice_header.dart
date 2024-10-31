import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_syles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0XFAFAFAFA),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0XFF4EB7F2),
          ),
        )
      ],
    );
  }
}
