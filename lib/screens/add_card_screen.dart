import 'package:finance_app/components/custom_app_bar.dart';
import 'package:finance_app/components/custom_text_field.dart';
import 'package:finance_app/components/primary_button.dart';
import 'package:finance_app/constants/app_colors.dart';
import 'package:finance_app/constants/app_strings.dart';
import 'package:finance_app/constants/app_styles.dart';
import 'package:finance_app/validators/app_validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController cardNumberController;
  late TextEditingController cardHolderController;
  late TextEditingController expiryDateController;
  late TextEditingController cvvController;

  bool _isDisposed = false;

  @override
  void initState() {
    super.initState();
    cardNumberController = TextEditingController();
    cardHolderController = TextEditingController();
    expiryDateController = TextEditingController();
    cvvController = TextEditingController();
  }

  @override
  void dispose() {
    _isDisposed = true;
    cardNumberController.dispose();
    cardHolderController.dispose();
    expiryDateController.dispose();
    cvvController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(
        title: AppStrings.addCard,
        icon: Icons.more_vert,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(22.r),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Card Preview
                _buildCardPreview(),
                SizedBox(height: 32.h),

                // Card Number Field
                Text(AppStrings.cardNumber, style: AppStyles.bodySmall),
                SizedBox(height: 8.h),
                CustomTextField(
                  hintText: AppStrings.enterCardNumber,
                  controller: cardNumberController,
                  validator: AppValidators.validateCardNumber,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    CardNumberInputFormatter(),
                  ],
                ),
                SizedBox(height: 16.h),

                // Card Holder Name Field
                Text(AppStrings.cardHolderName, style: AppStyles.bodySmall),
                SizedBox(height: 8.h),
                CustomTextField(
                  hintText: AppStrings.enterCardHolderName,
                  controller: cardHolderController,
                  validator: AppValidators.validateName,
                ),
                SizedBox(height: 16.h),

                // Expiry Date and CVV Row
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.expiryDate,
                            style: AppStyles.bodySmall,
                          ),
                          SizedBox(height: 8.h),
                          CustomTextField(
                            hintText: AppStrings.mmYy,
                            controller: expiryDateController,
                            validator: AppValidators.validateExpiryDate,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              ExpiryDateInputFormatter(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppStrings.cvv, style: AppStyles.bodySmall),
                          SizedBox(height: 8.h),
                          CustomTextField(
                            hintText: AppStrings.enterCvv,
                            controller: cvvController,
                            validator: AppValidators.validateCVV,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(3),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                const Spacer(),

                // Add Card Button
                PrimaryButton(
                  textButton: AppStrings.addCard,
                  onpressed: () {
                    if (mounted &&
                        !_isDisposed &&
                        formKey.currentState!.validate()) {
                      _addCard();
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCardPreview() {
    return Container(
      width: double.infinity,
      height: 200.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        gradient: const LinearGradient(
          colors: [
            AppColors.primary,
            AppColors.cardBlueLight,
            AppColors.cardBlueDark,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withValues(alpha: 0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cardNumberController.text.isEmpty
                  ? '**** **** **** ****'
                  : cardNumberController.text,
              style: AppStyles.balance.copyWith(
                fontSize: 20.sp,
                letterSpacing: 2.0,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.cardHolderName.toUpperCase(),
                      style: AppStyles.cardText.copyWith(fontSize: 10.sp),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      cardHolderController.text.isEmpty
                          ? AppStrings.yourName
                          : cardHolderController.text.toUpperCase(),
                      style: AppStyles.cardText,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.expiryDate.toUpperCase(),
                      style: AppStyles.cardText.copyWith(fontSize: 10.sp),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      expiryDateController.text.isEmpty
                          ? AppStrings.mmYy
                          : expiryDateController.text,
                      style: AppStyles.cardText,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _addCard() {
    // Handle card addition logic here
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(AppStrings.cardAddedSuccessfully),
        backgroundColor: AppColors.primary,
      ),
    );

    // Navigate back or to cards screen
    Navigator.of(context).pop();
  }
}

// Custom input formatters
class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text.replaceAll(' ', '');
    final buffer = StringBuffer();

    for (int i = 0; i < text.length; i++) {
      if (i > 0 && i % 4 == 0) {
        buffer.write(' ');
      }
      buffer.write(text[i]);
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}

class ExpiryDateInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text.replaceAll('/', '');
    final buffer = StringBuffer();

    for (int i = 0; i < text.length && i < 4; i++) {
      if (i == 2) {
        buffer.write('/');
      }
      buffer.write(text[i]);
    }

    return TextEditingValue(
      text: buffer.toString(),
      selection: TextSelection.collapsed(offset: buffer.length),
    );
  }
}