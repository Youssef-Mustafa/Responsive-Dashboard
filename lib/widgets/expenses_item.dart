import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/widgets/inactive_and_active_expenses_item.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(
      {super.key, required this.allExpensesItemModel, required this.isActive});
  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild:
          ActiveExpensesItem(allExpensesItemModel: allExpensesItemModel),
      secondChild:
          InActiveExpensesItem(allExpensesItemModel: allExpensesItemModel),
      crossFadeState:
          isActive ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: const Duration(milliseconds: 300),
    );
  }
}
