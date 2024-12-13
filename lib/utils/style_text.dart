import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';

Widget styleText({
  required String text,
  double? fontSize,
  FontWeight? fontweight,
  Color? color,
}) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontSize ?? 12,
      fontWeight: fontweight ?? FontWeight.normal,
      color: color ?? AppColors.buttonColor,
    ),
  );
}
