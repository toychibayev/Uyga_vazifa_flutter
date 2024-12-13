import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_application_1/utils/app_icons.dart';
import 'package:flutter_application_1/utils/app_images.dart';
import 'package:flutter_application_1/utils/style_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteContainer extends StatelessWidget {
  final String? image;
  final String? price;
  final Color? colors1;
  final Color? colors2;
  const FavouriteContainer({
    super.key,
    this.image,
    this.price,
    this.colors1,
    this.colors2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 233.h,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.backgroundColor,
              ),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  AppIcons.favoriteIcon,
                ),
              ),
            ),
            SizedBox(
              width: 125.w,
              height: 81.h,
              child: Image.asset(image ?? AppImages.jordanRed),
            ),
            SizedBox(
              height: 10.h,
            ),
            styleText(
              text: "Best Seller",
              fontweight: FontWeight.w500,
              fontSize: 12,
              color: AppColors.buttonColor,
            ),
            styleText(
              text: "Nike Jordan",
              color: AppColors.text3Color,
              fontweight: FontWeight.w500,
              fontSize: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                styleText(
                  text: price ?? "\$58.7",
                  color: AppColors.text3Color,
                  fontweight: FontWeight.w500,
                  fontSize: 16,
                ),
                Row(
                  children: [
                    Container(
                      width: 16.w,
                      height: 16.h,
                      decoration: BoxDecoration(
                        color: colors1 ?? AppColors.color1,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      width: 16.w,
                      height: 16.h,
                      decoration: BoxDecoration(
                        color: colors2 ?? AppColors.color2,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
