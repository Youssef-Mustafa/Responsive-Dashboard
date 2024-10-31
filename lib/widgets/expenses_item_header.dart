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
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60, maxHeight: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  shape: const OvalBorder(),
                  color: imageBackgroundColor ?? const Color(0XFFFAFAFA),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(
                        imageColor ?? const Color(0XFF4EB7F2), BlendMode.srcIn),
                  ),
                ),
              ),
            ),
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
