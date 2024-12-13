import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class WelcomePages extends StatelessWidget {
  const WelcomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1382c2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 120.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 100),
            alignment: Alignment.center,
            width: 230.w,
            child: Text(
              "WELLCOME TO NIKE",
              style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Image.asset(
            "assets/images/fonga.png",
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Container(
              alignment: Alignment(0, 0),
              height: 40.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(10.r)),
              child: Text(
                "Get Started",
              ),
            ),
          )
        ],
      ),
    );
  }
}
