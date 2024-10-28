import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_item_model.dart';
import 'package:responsive_dashboard/utlis/app_syles.dart';

class TransacionItem extends StatelessWidget {
  const TransacionItem({super.key, required this.transactionItemModel});
  final TransactionItemModel transactionItemModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: const Color(0XFFFAFAFA),
      child: ListTile(
        title: Text(
          transactionItemModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(transactionItemModel.date,
            style: AppStyles.styleRegular16
                .copyWith(color: const Color(0XFFAAAAAA))),
        trailing: Text(transactionItemModel.amount,
            style: AppStyles.styleSemiBold20.copyWith(
                color: transactionItemModel.isWithdrawal
                    ? const Color(0XFFF3735E)
                    : const Color(0XFF7CD87A))),
      ),
    );
  }
}
