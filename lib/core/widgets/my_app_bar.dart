import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String AppBarTitleText;
  const MyAppBar({super.key, required this.AppBarTitleText});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        AppBarTitleText,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(65.h);
}
