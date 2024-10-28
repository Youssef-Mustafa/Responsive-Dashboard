import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_item_model.dart';
import 'package:responsive_dashboard/widgets/transacion_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const List<TransactionItemModel> transactions = [
    TransactionItemModel(
        title: 'Cash Withdrawal',
        date: '13 April, 2022',
        amount: r'$20.129',
        isWithdrawal: true),
    TransactionItemModel(
      title: 'Landing Page project',
      date: '13 April, 2022 at 3:30 PM',
      amount: r'$2000',
      isWithdrawal: false,
    ),
    TransactionItemModel(
      title: 'Juni Mobile App project',
      date: '13 April, 2022 at 3:30 PM',
      amount: r'$20.129',
      isWithdrawal: false,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          return TransacionItem(transactionItemModel: transactions[index]);
        });
  }
}
