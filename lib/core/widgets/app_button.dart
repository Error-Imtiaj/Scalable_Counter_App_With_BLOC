import 'package:counter/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final Function()? onTap;
  final IconData icon;
  const AppButton({super.key, this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Theme.of(context).brightness == Brightness.light
                ? AppColor.lightThemeConBoxDecColor
                : AppColor.darkThemeConBoxDecColor,
            width: 2.w,
          ),
        ),
        child: Icon(icon, size: 36.w),
      ),
    );
  }
}
