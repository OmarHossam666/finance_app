import 'package:finance_app/components/custom_back_button.dart';
import 'package:finance_app/components/custom_text_field.dart';
import 'package:finance_app/components/primary_button.dart';
import 'package:finance_app/constants/app_strings.dart';
import 'package:finance_app/constants/app_styles.dart';
import 'package:finance_app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CreateNewPasswordScreen extends StatelessWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const CustomBackButton()),
      body: Padding(
        padding: EdgeInsets.all(22.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.createNewPassword, style: AppStyles.titleLarge),
            SizedBox(height: 10.h),
            Text(AppStrings.newPasswordSubtitle, style: AppStyles.bodyLarge),
            SizedBox(height: 32.h),
            const CustomTextField(hintText: AppStrings.newPassword),
            SizedBox(height: 15.h),
            const CustomTextField(hintText: AppStrings.confirmPassword),
            SizedBox(height: 38.h),
            PrimaryButton(
              textButton: AppStrings.resetPassword,
              onpressed: () {
                context.pushReplacement(AppRoutes.passwordChangedScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
