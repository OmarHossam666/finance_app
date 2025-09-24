import 'package:finance_app/core/widgets/primary_button.dart';
import 'package:finance_app/core/widgets/primary_outlined_button.dart';
import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/core/constants/app_colors.dart';
import 'package:finance_app/core/constants/app_strings.dart';
import 'package:finance_app/core/constants/app_styles.dart';
import 'package:finance_app/core/routes/app_routes.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.welcomeScreenImage,
              width: 375.w,
              height: 570.h,
              fit: BoxFit.contain,
              placeholderBuilder: (context) => Container(
                width: 375.w,
                height: 570.h,
                color: AppColors.backgroundLightGray,
                child: Icon(
                  Icons.image,
                  size: 100.w,
                  color: AppColors.textSecondary,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            PrimaryButton(
              textButton: AppStrings.login,
              onpressed: () {
                context.push(AppRoutes.loginScreen);
              },
            ),
            SizedBox(height: 16.h),
            PrimaryOutlinedButton(
              textButton: AppStrings.register,
              onPressed: () {
                context.push(AppRoutes.registerScreen);
              },
            ),
            SizedBox(height: 16.h),
            Text.rich(
              TextSpan(
                text: AppStrings.continueAsAGuest,
                style: AppStyles.link.copyWith(
                  color: AppColors.linkTextColor,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.linkTextColor,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    context.push(AppRoutes.homeScreen);
                  },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
