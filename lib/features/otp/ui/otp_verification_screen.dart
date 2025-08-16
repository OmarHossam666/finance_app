import 'package:finance_app/core/widgets/custom_back_button.dart';
import 'package:finance_app/core/widgets/custom_link_text.dart';
import 'package:finance_app/core/widgets/primary_button.dart';
import 'package:finance_app/core/constants/app_colors.dart';
import 'package:finance_app/core/constants/app_strings.dart';
import 'package:finance_app/core/constants/app_styles.dart';
import 'package:finance_app/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  late TextEditingController otpController;

  @override
  void initState() {
    super.initState();
    otpController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const CustomBackButton()),
      body: Padding(
        padding: EdgeInsets.all(22.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.otpVerification, style: AppStyles.titleLarge),
            SizedBox(height: 10.h),
            Text(AppStrings.otpSubtitle, style: AppStyles.bodyLarge),
            SizedBox(height: 32.h),
            PinCodeTextField(
              appContext: context,
              length: 4,
              controller: otpController,
              keyboardType: TextInputType.number,
              enableActiveFill: true,
              textStyle: AppStyles.titleLarge.copyWith(fontSize: 22.sp),
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8.r),
                fieldWidth: 70.w,
                fieldHeight: 60.h,
                activeColor: AppColors.primary,
                activeFillColor: AppColors.white,
                selectedFillColor: AppColors.white,
                selectedColor: AppColors.linkTextColor,
                inactiveColor: AppColors.textFieldBorderSideColor,
                inactiveFillColor: AppColors.textFieldFillColor,
                errorBorderColor: AppColors.error,
              ),
              onCompleted: (value) {
                if (mounted) {
                  context.pushReplacement(AppRoutes.createNewPasswordScreen);
                }
              },
            ),
            SizedBox(height: 38.h),
            PrimaryButton(
              textButton: AppStrings.verify,
              onpressed: () {
                if (mounted) {
                  context.pushReplacement(AppRoutes.createNewPasswordScreen);
                }
              },
            ),
            const Spacer(),
            CustomLinkText(
              text: AppStrings.didntReceiveCode,
              linkText: AppStrings.resend,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
