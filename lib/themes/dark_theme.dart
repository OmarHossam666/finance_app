import 'package:finance_app/constants/app_colors.dart';
import 'package:finance_app/constants/app_fonts.dart';
import 'package:finance_app/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DarkTheme {
  DarkTheme._();

  /// The dark theme data for the application.
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primary,
    scaffoldBackgroundColor:
        AppColors.darkBackground, // Standard dark theme background
    fontFamily: AppFonts.urbanist,

    // --- AppBar Theme ---
    appBarTheme: AppBarTheme(
      backgroundColor:
          AppColors.darkAppBarBackground, // Slightly lighter than scaffold
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColors.textWhite),
      titleTextStyle: AppStyles.titleMedium.copyWith(
        color: AppColors.textWhite,
      ),
    ),

    // --- Text Theme ---
    textTheme: TextTheme(
      displayLarge: AppStyles.titleLarge.copyWith(color: AppColors.textWhite),
      displayMedium: AppStyles.titleMedium.copyWith(color: AppColors.textWhite),
      displaySmall: AppStyles.titleSmall.copyWith(color: AppColors.textWhite),
      headlineMedium: AppStyles.titleMedium.copyWith(
        color: AppColors.textWhite,
      ),
      headlineSmall: AppStyles.titleSmall.copyWith(color: AppColors.textWhite),
      titleLarge: AppStyles.titleLarge.copyWith(color: AppColors.textWhite),
      bodyLarge: AppStyles.bodyLarge.copyWith(
        color: Colors.grey[400],
      ), // Lighter grey for subtitles
      bodyMedium: AppStyles.bodyMedium.copyWith(color: AppColors.textWhite),
      bodySmall: AppStyles.bodySmall.copyWith(color: Colors.grey[400]),
      labelLarge: AppStyles.button, // Button text color is already white
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
        side: BorderSide(color: AppColors.primary, width: 2.r),
      ),
    ),

    // --- Input Decoration Theme ---
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkTextFieldFillColor,
    ),

    // --- Bottom Navigation Bar Theme ---
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor:
          AppColors.darkBottomNavigationBarColor, // Match AppBar background
      selectedItemColor: AppColors.primary,
      unselectedItemColor: Colors.grey[500],
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      elevation: 2,
    ),
  );
}
