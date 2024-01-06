import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.imge,
      this.imageBackgroundColor,
      this.imageColor});
  final String imge;
  final Color? imageBackgroundColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            color: imageBackgroundColor ?? const Color(0xFFFAFAFA),
            shape: const OvalBorder(),
          ),
          child: Center(
              child: SvgPicture.asset(
            imge,
            colorFilter: ColorFilter.mode(
              imageColor ?? const Color(0xff4EB7F2),
              BlendMode.srcIn,
            ),
          )),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Transform.rotate(
          angle: -1.5708 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor == null ? const Color(0xFF064060) : Colors.white,
          ),
        )
      ],
    );
  }
}
