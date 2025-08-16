import 'package:finance_app/core/constants/app_colors.dart';
import 'package:finance_app/core/constants/app_fonts.dart';
import 'package:finance_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LightTheme {
  LightTheme._();

  /// The light theme data for the application.
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.background,
    fontFamily: AppFonts.urbanist,

    // --- AppBar Theme ---
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.background,
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColors.textPrimary),
      titleTextStyle: AppStyles.titleMedium,
    ),

    // --- Text Theme ---
    textTheme: TextTheme(
      displayLarge: AppStyles.titleLarge, // For very large text
      displayMedium: AppStyles.titleMedium,
      displaySmall: AppStyles.titleSmall,
      headlineMedium: AppStyles.titleMedium, // For titles
      headlineSmall: AppStyles.titleSmall,
      titleLarge: AppStyles.titleLarge, // For larger titles
      bodyLarge: AppStyles.bodyLarge, // For subtitles
      bodyMedium: AppStyles.bodyMedium, // Default body text
      bodySmall: AppStyles.bodySmall, // For labels
      labelLarge: AppStyles.button, // For button text
    ),

    // --- Button Theme ---
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        textStyle: AppStyles.button,
        minimumSize: Size(331.w, 56.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0.r),
        ),
      ),
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
        foregroundColor: AppColors.primary,
        textStyle: AppStyles.button,
        minimumSize: Size(331.w, 56.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0.r),
        ),
        side: BorderSide(color: AppColors.primary, width: 2.w),
      ),
    ),

    // --- Input Decoration Theme ---
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: AppColors.textFieldFillColor,
    ),

    // --- Bottom Navigation Bar Theme ---
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textSecondary,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      elevation: 2,
    ),
  );
}
