import 'package:finance_app/core/widgets/custom_back_button.dart';
import 'package:finance_app/core/widgets/custom_divider.dart';
import 'package:finance_app/core/widgets/custom_link_text.dart';
import 'package:finance_app/core/widgets/custom_social_button.dart';
import 'package:finance_app/core/widgets/custom_text_field.dart';
import 'package:finance_app/core/widgets/primary_button.dart';
import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/core/constants/app_strings.dart';
import 'package:finance_app/core/constants/app_styles.dart';
import 'package:finance_app/core/routes/app_routes.dart';
import 'package:finance_app/core/helpers/app_validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
  }

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const CustomBackButton()),
      body: Padding(
        padding: EdgeInsets.all(16.r),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Text(AppStrings.helloRegister, style: AppStyles.titleLarge),
              SizedBox(height: 32.h),
              CustomTextField(
                hintText: AppStrings.username,
                controller: usernameController,
                validator: AppValidators.validateName,
              ),
              SizedBox(height: 12.h),
              CustomTextField(
                hintText: AppStrings.email,
                controller: emailController,
                validator: AppValidators.validateEmail,
              ),
              SizedBox(height: 12.h),
              CustomTextField(
                hintText: AppStrings.password,
                controller: passwordController,
                validator: AppValidators.validatePassword,
                isPassword: true,
              ),
              SizedBox(height: 12.h),
              CustomTextField(
                hintText: AppStrings.confirmPassword,
                controller: confirmPasswordController,
                validator: AppValidators.validatePassword,
                isPassword: true,
              ),
              SizedBox(height: 30.h),
              PrimaryButton(
                textButton: AppStrings.register,
                onpressed: () {
                  if (formKey.currentState!.validate()) {
                    context.pushReplacement(AppRoutes.loginScreen);
                  }
                },
              ),
              SizedBox(height: 35.h),
              const CustomDivider(text: AppStrings.orRegisterWith),
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
                text: AppStrings.alreadyHaveAnAccount,
                linkText: AppStrings.loginNow,
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
