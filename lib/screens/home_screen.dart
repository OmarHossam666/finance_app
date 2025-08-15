import 'package:finance_app/constants/app_assets.dart';
import 'package:finance_app/constants/app_colors.dart';
import 'package:finance_app/constants/app_strings.dart';
import 'package:finance_app/screens/add_card_screen.dart';
import 'package:finance_app/screens/home_page.dart';
import 'package:finance_app/screens/my_cards_screen.dart';
import 'package:finance_app/screens/profile_screen.dart';
import 'package:finance_app/screens/statistics_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  final List<Widget> screens = [
    const HomePage(),
    const StatisticsScreen(),
    const AddCardScreen(),
    const MyCardsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: _buildCustomBottomNavigationBar(),
    );
  }

  Widget _buildCustomBottomNavigationBar() {
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(0, AppAssets.homeIcon, AppStrings.home),
          _buildNavItem(1, AppAssets.chartIcon, AppStrings.statistic),
          _buildCenterAddButton(),
          _buildNavItem(3, AppAssets.walletIcon, AppStrings.myCard),
          _buildNavItem(4, AppAssets.profileIcon, AppStrings.myProfile),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, String iconPath, String label) {
    final isSelected = currentIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Column(
          spacing: 4.h,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 24.w,
              height: 24.h,
              colorFilter: ColorFilter.mode(
                isSelected ? AppColors.primary : AppColors.unselectedItemColor,
                BlendMode.srcIn,
              ),
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                color: isSelected
                    ? AppColors.primary
                    : AppColors.unselectedItemColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCenterAddButton() {
    return GestureDetector(
      onTap: () {
        // Handle add button tap
        setState(() {
          currentIndex = 2;
        });
      },
      child: Container(
        width: 56.w,
        height: 56.h,
        decoration: BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: AppColors.primary.withValues(alpha: 0.3),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Center(
          child: Container(
            width: 24.w,
            height: 24.h,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(6.r),
            ),
            child: Icon(Icons.add, color: AppColors.primary, size: 18.sp),
          ),
        ),
      ),
    );
  }
}
