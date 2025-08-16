import 'package:finance_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        minimumSize: Size(41.w, 41.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
          side: BorderSide(
            color: AppColors.textFieldBorderSideColor,
            width: 1.w,
          ),
        ),
      ),
      onPressed: () {
        context.pop();
      },
      icon: const Icon(Icons.arrow_back_ios_new, color: AppColors.primary),
    );
  }
}
