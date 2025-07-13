import 'package:counter/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColor.lightThemeAppTextColor,
      ),
      iconTheme: IconThemeData(
        size: 36.w,
        color: AppColor.lightThemeIconsColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.lightElevatedButtonBackgroudColor,
          shape: RoundedRectangleBorder(),
        ),
      ),
      textTheme: TextTheme(
        // COUNTER TEXT THEME
        headlineLarge: GoogleFonts.robotoSlab(
          color: AppColor.lightThemeAppTextColor,
          fontSize: 80.sp,
          fontWeight: FontWeight.bold,
        ),
        // TITLE LARGE FOR THE APPBAR TEXT THEME
        titleLarge: GoogleFonts.robotoSlab(
          color: AppColor.lightThemeAppbarTextColor,
          fontSize: 32.sp,
          fontWeight: FontWeight.bold,
        ),
        // TITLE SMALL FOR THE ELEVATED RESET BUTTON
        titleSmall: GoogleFonts.robotoSlab(
          color: AppColor.lightThemeElevatedButtonTextColor,
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColor.darkThemeAppbarBackgroudColor,
      ),
      iconTheme: IconThemeData(size: 36.w, color: AppColor.darkThemeIconsColor),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.darkElevatedButtonBackgroudColor,
          shape: RoundedRectangleBorder(),
        ),
      ),
      textTheme: TextTheme(
        // COUNTER TEXT THEME
        headlineLarge: GoogleFonts.robotoSlab(
          color: AppColor.darkThemeAppTextColor,
          fontSize: 80.sp,
          fontWeight: FontWeight.bold,
        ),
        // TITLE LARGE FOR THE APPBAR TEXT THEME
        titleLarge: GoogleFonts.robotoSlab(
          color: AppColor.darkThemeAppbarTextColor,
          fontSize: 32.sp,
          fontWeight: FontWeight.bold,
        ),
        // TITLE SMALL FOR THE ELEVATED RESET BUTTON
        titleSmall: GoogleFonts.robotoSlab(
          color: AppColor.darkThemeElevatedButtonTextColor,
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
