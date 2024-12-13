import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/widgets/FavouriteContainer.dart';
import 'package:flutter_application_1/presentation/widgets/appBar_widget.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_application_1/utils/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouritePages extends StatelessWidget {
  const FavouritePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: const ApbarWidget(),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FavouriteContainer(),
                  FavouriteContainer(
                    image: AppImages.airMaxBlue,
                    colors1: AppColors.color2,
                    colors2: AppColors.color1,
                    price: "\$37.8",
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FavouriteContainer(
                    image: AppImages.nikeClub,
                    colors1: AppColors.color3,
                    colors2: AppColors.color4,
                    price: "\$47.7",
                  ),
                  FavouriteContainer(
                    image: AppImages.airMaxRed,
                    colors1: AppColors.color4,
                    colors2: AppColors.color3,
                    price: "\$57.6",
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FavouriteContainer(),
                  FavouriteContainer(
                    image: AppImages.airMaxBlue,
                    colors1: AppColors.color2,
                    colors2: AppColors.color1,
                    price: "\$37.8",
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FavouriteContainer(
                    image: AppImages.nikeClub,
                    colors1: AppColors.color3,
                    colors2: AppColors.color4,
                    price: "\$47.7",
                  ),
                  FavouriteContainer(
                    image: AppImages.airMaxRed,
                    colors1: AppColors.color4,
                    colors2: AppColors.color3,
                    price: "\$57.6",
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/Vector.png',
              fit: BoxFit.cover,
            ),
          ),
          BottomNavigationBar(
            onTap: (index) {},
            selectedItemColor: AppColors.buttonColor,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline),
                label: 'Favourites',
              ),
              BottomNavigationBarItem(
                icon: SizedBox.shrink(),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_outlined),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'Profile',
              ),
            ],
          ),
          Positioned(
            top: -30.h,
            left: 170.w,
            child: FloatingActionButton(
              backgroundColor: AppColors.buttonColor,
              onPressed: () {},
              child: const Icon(Icons.shopping_bag_outlined,
                  color: AppColors.whiteColor),
            ),
          ),
        ],
      ),
    );
  }
}
