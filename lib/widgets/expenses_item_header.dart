import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ExpensesItemHeader extends StatelessWidget {
  const ExpensesItemHeader({
    super.key,
    required this.image,
    this.iconColor,
    this.imageColor,
    this.imageBackgroundColor,
  });
  final Color? iconColor, imageColor, imageBackgroundColor;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(14),
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: imageBackgroundColor ?? const Color(0XFFFAFAFA),
          ),
          child: SvgPicture.asset(
            image,
            colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0XFF4EB7F2), BlendMode.srcIn),
          ),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: iconColor ?? const Color(0XFF064061),
        ),
      ],
    );
  }
}
