import 'package:finance_app/core/widgets/primary_button.dart';
import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/core/constants/app_strings.dart';
import 'package:finance_app/core/constants/app_styles.dart';
import 'package:finance_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PasswordChangedScreen extends StatelessWidget {
  const PasswordChangedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(22.r),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.successMarkIcon,
                width: 100.w,
                height: 100.h,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 35.h),
              Text(AppStrings.passwordChanged, style: AppStyles.titleLarge),
              SizedBox(height: 8.h),
              Text(
                AppStrings.passwordChangedSubtitle,
                style: AppStyles.bodyLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.h),
              PrimaryButton(
                textButton: AppStrings.backToLogin,
                onpressed: () {
                  context.pushReplacement(AppRoutes.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
