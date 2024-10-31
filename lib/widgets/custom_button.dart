import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_syles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.buttonColor,
      required this.buttonTitle,
      required this.textColor});
  final Color buttonColor, textColor;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: buttonColor,
        ),
        onPressed: () {},
        child: Text(
          buttonTitle,
          style: AppStyles.styleSemiBold18(context).copyWith(color: textColor),
        ),
      ),
    );
  }
}
