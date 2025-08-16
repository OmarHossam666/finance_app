import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/core/constants/app_colors.dart';
import 'package:finance_app/core/constants/app_strings.dart';
import 'package:finance_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: AppColors.primary,
          foregroundImage: const AssetImage(AppAssets.profilePhoto),
          radius: 32.r,
        ),
        SizedBox(width: 16.w),
        Expanded(
          child: Column(
            spacing: 4.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.welcomeBack, style: AppStyles.bodyLarge),
              Text(AppStrings.omarHossam, style: AppStyles.titleSmall),
            ],
          ),
        ),
        Container(
          alignment: Alignment.center,
          width: 48.w,
          height: 48.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.textFieldFillColor,
            border: Border.all(
              color: AppColors.textFieldBorderSideColor,
              width: 1.w,
            ),
          ),
          child: SvgPicture.asset(
            AppAssets.notificationIcon,
            width: 24.w,
            height: 24.h,
          ),
        ),
      ],
    );
  }
}