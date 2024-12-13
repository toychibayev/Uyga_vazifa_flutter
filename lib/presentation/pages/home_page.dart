import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_application_1/utils/app_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bool _orderCart = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        leading: Image.asset(
          AppIcons.menuIcon,
        ),
        title: Text(
          "Explore",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 30.sp,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 40.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    color: AppColors.whiteColor,
                  ),
                  child: Image.asset(
                    AppIcons.shoppingBagIcon,
                  ),
                ),
                Positioned(
                  right: 3,
                  top: 3,
                  child: Container(
                    width: 8.w,
                    height: 8.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: _orderCart
                          ? AppColors.redColor
                          : AppColors.whiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
