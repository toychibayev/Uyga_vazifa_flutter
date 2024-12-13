// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/pages/favourite_pages.dart';
import 'package:flutter_application_1/presentation/widgets/change_kross_container.dart';
import 'package:flutter_application_1/presentation/widgets/custom_appBar.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_application_1/utils/app_icons.dart';
import 'package:flutter_application_1/utils/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class SneakerShop extends StatefulWidget {
  const SneakerShop({super.key});

  @override
  State<SneakerShop> createState() => _SneakerShopState();
}

class _SneakerShopState extends State<SneakerShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h),
            const CustomAppBar(
              text: "Sneaker Shop",
            ),
            SizedBox(height: 20.h),
            Text("Nike Air Max 270 Essential",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp)),
            SizedBox(height: 7.h),
            const Text("Mens Shoes",
                style: TextStyle(color: AppColors.text1Color)),
            SizedBox(height: 8.h),
            Text("\$179.39",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp)),
            SizedBox(
              width: double.infinity,
              height: 140.h,
              child: Image.asset(AppImages.airMaxEssential, fit: BoxFit.cover),
            ),
            SizedBox(height: 20.h),
            const Center(
              child: ImageContainer(),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChangeContainer(image: AppImages.airMaxEssential),
                  ChangeContainer(image: AppImages.airMax270),
                  ChangeContainer(image: AppImages.airMaxBlue),
                  ChangeContainer(image: AppImages.airMaxRed),
                  ChangeContainer(image: AppImages.jordanRed),
                  ChangeContainer(image: AppImages.nikeClub),
                  ChangeContainer(image: AppImages.nikeSale),
                ],
              ),
            ),
            containerText(),
            SizedBox(height: 35.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FavouritePages()));
                  },
                  child: Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[350]),
                    child:
                        Image.asset(AppIcons.favoriteIcon, color: Colors.black),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.buttonColor,
                      borderRadius: BorderRadius.circular(12.r)),
                  alignment: Alignment.center,
                  height: 43.h,
                  width: 180.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        AppIcons.shoppingBagIcon,
                        color: AppColors.whiteColor,
                      ),
                      const Text(
                        "Add To Card",
                        style: TextStyle(color: AppColors.whiteColor),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Container containerText() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
              "The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........"),
          SizedBox(height: 10.h),
          Text(
            "Read More",
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50.w,
      height: 18.h,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.whiteColor,
            size: 10.sp,
          ),
          SizedBox(width: 15.w),
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 10.sp,
            color: AppColors.whiteColor,
          ),
        ],
      ),
    );
  }
}
