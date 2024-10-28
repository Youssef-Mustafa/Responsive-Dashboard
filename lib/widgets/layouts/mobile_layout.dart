import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/sections/all_expense_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widgets/sections/my_card_and_transaction_history_section.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpenseAndQuickInvoiceSection(),
          SizedBox(height: 24),
          MyCardAndTransactionHistorySection(),
          SizedBox(height: 24),
          IncomeSection()
        ],
      ),
    );
  }
}
