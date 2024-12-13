import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_application_1/utils/app_icons.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ApbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const ApbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      leading: Transform.translate(
        offset: const Offset(20, 0),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 60.w,
            height: 60.h,
            decoration: const BoxDecoration(
              color: AppColors.whiteColor,
              shape: BoxShape.circle,
            ),
            child: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
      ),
      title: const Text("Favourite"),
      centerTitle: true,
      actions: [
        Transform.translate(
          offset: const Offset(-10, 0),
          child: Container(
            width: 60.w,
            height: 60.h,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.whiteColor,
            ),
            child: Image.asset(AppIcons.favoriteIcon),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
