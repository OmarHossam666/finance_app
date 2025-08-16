import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class AppStyles {
  AppStyles._();

  // --- Text Styles ---

  /// Style for large, bold titles on authentication screens.
  /// e.g., "Welcome back! Again!", "Create new password"
  static final TextStyle titleLarge = TextStyle(
    fontSize: 30.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );

  /// Style for main screen titles and prominent headers.
  /// e.g., "My Profile", "Reload", "All Cards"
  static final TextStyle titleMedium = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  /// Style for user names or important values in profiles.
  /// e.g., "Abdallah Yassein" on the Home screen.
  static final TextStyle titleSmall = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
    color: AppColors.textPrimary,
  );

  /// Style for subtitles and descriptive text.
  /// e.g., "Your new password must be unique..."
  static final TextStyle bodyLarge = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500, // Medium
    color: AppColors.textSecondary,
  );

  /// Style for standard body text and input field values.
  /// e.g., Profile information values like "abdallahyassein@yahoo.com"
  static final TextStyle bodyMedium = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600, // SemiBold
    color: AppColors.textPrimary,
  );

  /// Style for smaller body text, like labels or less important info.
  /// e.g., "Full Name", "Email" labels in My Profile.
  static final TextStyle bodySmall = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500, // Medium
    color: AppColors.textSecondary,
  );

  /// Style for text inside primary buttons.
  /// e.g., "Login", "Reset Password"
  static final TextStyle button = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textWhite,
  );

  /// Style for text links.
  /// e.g., "Forgot Password?", "Register Now"
  static final TextStyle link = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w600, // SemiBold
    color: AppColors.linkTextColor,
  );

  /// Style for input field hint text.
  /// e.g., "Enter your email"
  static final TextStyle hint = TextStyle(
    fontSize: 15.sp,
    fontWeight: FontWeight.w500, // Medium
    color: AppColors.textHint,
  );

  /// Style for the large balance text on cards.
  /// e.g., "23400 EG"
  static final TextStyle balance = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.w600,
    color: AppColors.textWhite,
  );

  /// Style for general text on cards.
  /// e.g., "X-Card", "**** 3434"
  static final TextStyle cardText = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeight.w700, // SemiBold
    color: AppColors.cardTextColor,
  );
}
