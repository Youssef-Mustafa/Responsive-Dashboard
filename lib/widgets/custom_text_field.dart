import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utlis/app_syles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText});
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle:
            AppStyles.styleRegular16.copyWith(color: const Color(0XFFAAAAAA)),
        hintText: hintText,
        filled: true,
        fillColor: const Color(0XFFFAFAFA),
        enabledBorder: buildBorder(),
        border: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Color(0XFFFAFAFA),
      ),
    );
  }
}
