import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                  hintText: 'Type customer name', title: 'Customer name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                  hintText: 'Type customer email', title: 'Customer email'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child:
                  TitleTextField(hintText: 'Type itm name', title: 'Item name'),
            ),
            SizedBox(width: 16),
            Expanded(
              child: TitleTextField(
                  hintText: 'Type item amount', title: 'Item amount'),
            ),
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                textColor: Color(0XFF4EB7F2),
                buttonColor: Colors.transparent,
                buttonTitle: 'Add more details',
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: CustomButton(
                textColor: Colors.white,
                buttonColor: Color(0XFF4EB7F2),
                buttonTitle: 'Send Money',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
