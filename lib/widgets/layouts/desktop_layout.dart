import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/sections/all_expense_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widgets/sections/my_card_and_transaction_history_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 40.0),
            child: AllExpenseAndQuickInvoiceSection(),
          ),
        ),
        SizedBox(width: 24),
        Expanded(
            child: Column(
          children: [
            SizedBox(height: 40),
            MyCardAndTransactionHistorySection(),
            SizedBox(height: 24),
            Expanded(child: IncomeSection()),
          ],
        )),
      ],
    );
  }
}
