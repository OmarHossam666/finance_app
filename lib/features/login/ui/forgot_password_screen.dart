import 'package:finance_app/core/widgets/custom_back_button.dart';
import 'package:finance_app/core/widgets/custom_link_text.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:finance_app/core/widgets/primary_button.dart';
import 'package:finance_app/core/constants/app_strings.dart';
import 'package:finance_app/core/constants/app_styles.dart';
import 'package:finance_app/core/routes/app_routes.dart';
import 'package:finance_app/core/helpers/app_validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const CustomBackButton()),
      body: Padding(
        padding: EdgeInsets.all(22.r),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.forgotPasswordTitle, style: AppStyles.titleLarge),
              SizedBox(height: 10.h),
              Text(
                AppStrings.forgotPasswordSubtitle,
                style: AppStyles.bodyLarge,
              ),
              SizedBox(height: 32.h),
              CustomTextField(
                hintText: AppStrings.enterYourEmail,
                controller: emailController,
                validator: AppValidators.validateEmail,
              ),
              SizedBox(height: 38.h),
              PrimaryButton(
                textButton: AppStrings.sendCode,
                onpressed: () {
                  if (formKey.currentState!.validate()) {
                    context.pushReplacement(AppRoutes.otpVerificationScreen);
                  }
                },
              ),
              const Spacer(),
              CustomLinkText(
                text: AppStrings.rememberPassword,
                linkText: AppStrings.login,
                onTap: () {
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
