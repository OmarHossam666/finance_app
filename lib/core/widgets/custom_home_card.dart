import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/core/constants/app_strings.dart';
import 'package:finance_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomHomeCard extends StatelessWidget {
  const CustomHomeCard({
    super.key,
    required this.cardType,
    required this.cardMoney,
    required this.cardCode,
    required this.cardColor,
    required this.cardWidth,
    required this.cardHeight,
  });

  final String cardType;
  final String cardMoney;
  final String cardCode;
  final Color cardColor;
  final double cardWidth;
  final double cardHeight;

  @override
  Widget build(BuildContext context) {
    final bool isHomeCard = cardWidth == 207 && cardHeight == 263;

    return Stack(
      children: [
        Container(
          width: cardWidth.w,
          height: cardHeight.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: cardColor,
          ),
          child: Padding(
            padding: EdgeInsets.all(isHomeCard ? 24.r : 16.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        cardType,
                        style: AppStyles.cardText,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SvgPicture.asset(
                      AppAssets.visa,
                      width: 40.w,
                      height: 24.h,
                      fit: BoxFit.contain,
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppStrings.balance, style: AppStyles.cardText),
                    SizedBox(height: 8.h),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '$cardMoney ${AppStrings.egp}',
                        style: AppStyles.balance,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        cardCode,
                        style: AppStyles.cardText,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(AppStrings.cardDate, style: AppStyles.cardText),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 32.h,
          left: 16.w,
          child: SvgPicture.asset(AppAssets.layer1),
        ),
        Positioned(
          bottom: 16.h,
          left: 8.w,
          child: SvgPicture.asset(AppAssets.layer2),
        ),
      ],
    );
  }
}
