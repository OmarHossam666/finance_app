import 'package:finance_app/core/constants/app_colors.dart';
import 'package:finance_app/core/constants/app_strings.dart';
import 'package:finance_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomStatisticsItem extends StatelessWidget {
  const CustomStatisticsItem({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subtitle,
  });

  final String iconPath;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      constraints: BoxConstraints(
        minWidth: 140.w,
        maxWidth: 180.w,
        minHeight: 120.h,
        maxHeight: 160.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.itemColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: AppColors.borderItemColor, width: 1.w),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Icon Container
          Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: AppColors.backgroundIconColor,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Center(
              child: SvgPicture.asset(
                iconPath,
                width: 24.w,
                height: 24.h,
                fit: BoxFit.contain,
              ),
            ),
          ),

          SizedBox(height: 12.h),

          // Title with overflow protection
          Flexible(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                '$title ${AppStrings.egp}',
                style: AppStyles.titleSmall.copyWith(
                  color: AppColors.textPrimary,
                  fontSize: 16.sp,
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),

          SizedBox(height: 4.h),

          // Subtitle with overflow protection
          Flexible(
            child: Text(
              subtitle,
              style: AppStyles.bodyLarge.copyWith(fontSize: 14.sp),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
