import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, this.color});
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: color ?? const Color(0xff4EB7F2),
          elevation: 0,
        ),
        onPressed: () {},
        child: Text(
          'Send Money',
          style: color == null
              ? AppStyle.styleSemiBold18
              : AppStyle.styleSemiBold18.copyWith(
                  color: const Color(0xff4EB7F2),
                ),
        ),
      ),
    );
  }
}
