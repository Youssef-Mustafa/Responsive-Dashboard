import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_detail_model.dart';
import 'package:responsive_dashboard/utlis/app_syles.dart';

class IncomItemDetails extends StatelessWidget {
  const IncomItemDetails({super.key, required this.itemDetailModel});
  final IncomeItemDetailModel itemDetailModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
            shape: const CircleBorder(), color: itemDetailModel.color),
      ),
      title: Text(itemDetailModel.title, style: AppStyles.styleRegular16),
      trailing: Text(itemDetailModel.trailling, style: AppStyles.styleMedium16),
    );
  }
}
