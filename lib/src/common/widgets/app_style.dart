import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle appStyle(
    {required double fontSize, required Color color, required FontWeight fw}) {
  return TextStyle(
    fontSize: fontSize.sp,
    color: color,
    fontWeight: fw,
  );
}
