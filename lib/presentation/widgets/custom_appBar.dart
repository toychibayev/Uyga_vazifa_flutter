import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_application_1/utils/app_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomAppBar extends StatelessWidget {
  final String text;
  final String image;
  const CustomAppBar({
    super.key,
    required this.text,
    this.image = AppIcons.shoppingBagIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: const BoxDecoration(
              color: AppColors.whiteColor, shape: BoxShape.circle),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.normal),
        ),
        Container(
          height: 45.h,
          width: 45.w,
          decoration: const BoxDecoration(
              color: AppColors.whiteColor, shape: BoxShape.circle),
          child: Image.asset(image),
        ),
      ],
    );
  }
}
