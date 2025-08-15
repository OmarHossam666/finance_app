import 'package:finance_app/components/custom_back_button.dart';
import 'package:finance_app/components/custom_divider.dart';
import 'package:finance_app/components/custom_link_text.dart';
import 'package:finance_app/components/custom_social_button.dart';
import 'package:finance_app/components/custom_text_field.dart';
import 'package:finance_app/components/primary_button.dart';
import 'package:finance_app/constants/app_assets.dart';
import 'package:finance_app/constants/app_strings.dart';
import 'package:finance_app/constants/app_styles.dart';
import 'package:finance_app/routes/app_routes.dart';
import 'package:finance_app/validators/app_validators.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const CustomBackButton()),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(22.r),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.welcomeBack, style: AppStyles.titleLarge),
                Text(AppStrings.again, style: AppStyles.titleLarge),
                SizedBox(height: 32.h),
                CustomTextField(
                  hintText: AppStrings.enterYourEmail,
                  controller: emailController,
                  validator: AppValidators.validateEmail,
                ),
                SizedBox(height: 15.h),
                CustomTextField(
                  hintText: AppStrings.enterYourPassword,
                  isPassword: true,
                  controller: passwordController,
                  validator: AppValidators.validatePassword,
                ),
                SizedBox(height: 15.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text.rich(
                    TextSpan(
                      text: AppStrings.forgotPassword,
                      style: AppStyles.link,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () =>
                            context.push(AppRoutes.forgotPasswordScreen),
                    ),
                  ),
                ),
                SizedBox(height: 30.h),
                PrimaryButton(
                  textButton: AppStrings.login,
                  onpressed: () {
                    if (formKey.currentState!.validate()) {
                      context.pushReplacement(AppRoutes.homeScreen);
                    }
                  },
                ),
                SizedBox(height: 35.h),
                const CustomDivider(text: AppStrings.orLoginWith),
                SizedBox(height: 22.h),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomSocialButton(imagePath: AppAssets.facebookIcon),
                    CustomSocialButton(imagePath: AppAssets.googleIcon),
                    CustomSocialButton(imagePath: AppAssets.appleIcon),
                  ],
                ),
                const Spacer(),
                CustomLinkText(
                  text: AppStrings.dontHaveAnAccount,
                  linkText: AppStrings.registerNow,
                  onTap: () {
                    context.pushReplacement(AppRoutes.registerScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
