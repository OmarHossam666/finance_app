import 'package:finance_app/constants/app_colors.dart';
import 'package:finance_app/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white,
      elevation: 0,
      leading: Padding(
        padding: EdgeInsets.all(8.r),
        child: GestureDetector(
          onTap: () => context.pop(),
          child: Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.white,
              border: Border.all(
                color: AppColors.textFieldBorderSideColor,
                width: 1.w,
              ),
            ),
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 18.sp,
              color: AppColors.textPrimary,
            ),
          ),
        ),
      ),
      title: Text(title, style: AppStyles.titleMedium),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.all(8.r),
          child: GestureDetector(
            onTap: () {
              // Handle menu action
            },
            child: Container(
              width: 48.w,
              height: 48.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.textFieldBorderSideColor,
                  width: 1.w,
                ),
              ),
              child: Icon(icon, size: 18.sp, color: AppColors.textPrimary),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
