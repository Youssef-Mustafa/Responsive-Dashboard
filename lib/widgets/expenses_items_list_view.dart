import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utlis/app_images.dart';
import 'package:responsive_dashboard/widgets/expenses_item.dart';

class ExpensesItemsListView extends StatefulWidget {
  const ExpensesItemsListView({super.key});

  @override
  State<ExpensesItemsListView> createState() => _ExpensesItemsListViewState();
}

class _ExpensesItemsListViewState extends State<ExpensesItemsListView> {
  final List<AllExpensesItemModel> items = const [
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
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        // children: items.map((e) => Expanded(child: ExpensesItem(allExpensesItemModel: e))).toList(),
        children: items.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      if (index == 1) {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: (16.0)),
              child: ExpensesItem(
                allExpensesItemModel: item,
                isActive: activeIndex == index,
              ),
            ),
          ),
        );
      } else {
        return Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(index);
            },
            child: ExpensesItem(
              allExpensesItemModel: item,
              isActive: activeIndex == index,
            ),
          ),
        );
      }
    }).toList());
  }

  void updateIndex(int index) {
    setState(() {
      activeIndex = index;
    });
  }
}
