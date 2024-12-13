import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ChangeContainer extends StatelessWidget {
  final String image;
  const ChangeContainer({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, top: 25, bottom: 20),
      child: Container(
        height: 50.h,
        width: 50.w,
        decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(12.sp)),
        child: Image.asset(image),
      ),
    );
  }
}
