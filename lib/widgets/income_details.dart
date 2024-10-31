import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_item_detail_model.dart';
import 'package:responsive_dashboard/widgets/income_item_details.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeItemDetailModel(
        title: 'Design service', trailling: '40%', color: Color(0xFF208BC7)),
    IncomeItemDetailModel(
        title: 'Design product', trailling: '25%', color: Color(0xFF4DB7F2)),
    IncomeItemDetailModel(
        title: 'Product royalti', trailling: '20%', color: Color(0xFF064060)),
    IncomeItemDetailModel(
        title: 'Other', trailling: '22%', color: Color(0xFFE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => IncomItemDetails(itemDetailModel: e)).toList(),
    );
    // return ListView.builder(
    //     shrinkWrap: true,
    //     itemCount: items.length,
    //     itemBuilder: (context, index) {
    //       return IncomItemDetails(itemDetailModel: items[index]);
    //     });
  }
}
