import 'package:finance_app/core/constants/app_colors.dart';
import 'package:finance_app/core/constants/app_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomLinkText extends StatelessWidget {
  const CustomLinkText({
    super.key,
    required this.text,
    required this.linkText,
    required this.onTap,
  });

  final String text;
  final String linkText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          text: text,
          style: AppStyles.link.copyWith(color: AppColors.primary),
          children: [
            TextSpan(
              text: linkText,
              style: AppStyles.link.copyWith(
                fontWeight: FontWeight.bold,
                decorationColor: AppColors.linkTextColor,
              ),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
