import 'package:finance_app/core/constants/app_colors.dart';
import 'package:finance_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.isPassword,
    this.controller,
    this.validator,
    this.keyboardType,
    this.inputFormatters,
  });

  final String hintText;
  final bool? isPassword;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;

  void changeObscure() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 331.w,
      height: 56.h,
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        obscureText: isObscure,
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        cursorColor: AppColors.primary,
        cursorWidth: 2.w,
        decoration: InputDecoration(
          suffixIcon: widget.isPassword ?? false
              ? Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: IconButton(
                    onPressed: () => changeObscure(),
                    icon: Icon(
                      isObscure ? Icons.visibility_off : Icons.visibility,
                      color: AppColors.textFieldSuffixIconColor,
                    ),
                  ),
                )
              : null,
          hintText: widget.hintText,
          hintStyle: AppStyles.hint,
          contentPadding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(
              color: AppColors.textFieldBorderSideColor,
              width: 1.w,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.primary, width: 2.w),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.error, width: 2.w),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: AppColors.error, width: 2.w),
          ),
        ),
      ),
    );
  }
}
