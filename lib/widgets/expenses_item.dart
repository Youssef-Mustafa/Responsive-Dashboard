import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utlis/app_syles.dart';
import 'package:responsive_dashboard/widgets/expenses_item_header.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0XFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpensesItemHeader(
            image: allExpensesItemModel.image,
          ),
          const SizedBox(height: 34),
          Text(
            allExpensesItemModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            allExpensesItemModel.date,
            style: AppStyles.styleRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            allExpensesItemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
