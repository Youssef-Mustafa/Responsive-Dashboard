import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpensesItemHeader extends StatelessWidget {
  const ExpensesItemHeader({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0XFFFAFAFA),
          ),
          child: SvgPicture.asset(image),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          color: Color(0XFF064061),
        ),
      ],
    );
  }
}
