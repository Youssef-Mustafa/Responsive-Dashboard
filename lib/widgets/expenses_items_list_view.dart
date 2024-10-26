import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utlis/app_images.dart';
import 'package:responsive_dashboard/widgets/expenses_item.dart';

class ExpensesItemsListView extends StatelessWidget {
  const ExpensesItemsListView({super.key});
  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
        title: 'Balance',
        image: Assets.imagesBalance,
        date: 'April 2022',
        price: '19.129'),
    AllExpensesItemModel(
        title: 'Income',
        image: Assets.imagesIncome,
        date: 'April 2022',
        price: '19.129'),
    AllExpensesItemModel(
        title: 'Expenses',
        image: Assets.imagesExpenses,
        date: 'April 2022',
        price: '19.129'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
        // children: items.map((e) => Expanded(child: ExpensesItem(allExpensesItemModel: e))).toList(),
        children: items.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      if (index == 1) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: (16.0)),
            child: ExpensesItem(allExpensesItemModel: item),
          ),
        );
      } else {
        return Expanded(child: ExpensesItem(allExpensesItemModel: item));
      }
    }).toList());
  }
}
