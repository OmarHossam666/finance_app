import 'package:finance_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSocialButton extends StatelessWidget {
  const CustomSocialButton({super.key, required this.imagePath});

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        width: 105.w,
        height: 56.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: AppColors.textFieldBorderSideColor,
            width: 1.w,
          ),
        ),
        child: Center(
          child: Image.asset(
            imagePath,
            width: 26.w,
            height: 26.h,
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
