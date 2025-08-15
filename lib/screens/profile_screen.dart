import 'package:finance_app/components/custom_app_bar.dart';
import 'package:finance_app/components/custom_user_data.dart';
import 'package:finance_app/constants/app_assets.dart';
import 'package:finance_app/constants/app_colors.dart';
import 'package:finance_app/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(
        title: AppStrings.myProfile,
        icon: Icons.edit_note,
      ),
      body: Padding(
        padding: EdgeInsets.all(14.r),
        child: Column(
          spacing: 16.h,
          children: [
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 50.r,
                foregroundImage: const AssetImage(AppAssets.profilePhoto),
              ),
            ),
            const CustomUserData(
              field: AppStrings.fullName,
              value: AppStrings.omarHossam,
            ),
            const CustomUserData(
              field: AppStrings.profileEmail,
              value: AppStrings.profileEmailAddress,
            ),
            const CustomUserData(
              field: AppStrings.address,
              value: AppStrings.cairoEgypt,
            ),
            const CustomUserData(
              field: AppStrings.phoneNumber,
              value: AppStrings.profilePhoneNumber,
            ),
          ],
        ),
      ),
    );
  }
}
