import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_app/features/home/ui/widgets/custom_home_app_bar.dart';
import 'package:finance_app/core/widgets/custom_home_card.dart';
import 'package:finance_app/core/constants/app_assets.dart';
import 'package:finance_app/core/constants/app_colors.dart';
import 'package:finance_app/core/constants/app_strings.dart';
import 'package:finance_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(22.r),
      child: Column(
        children: [
          const CustomHomeAppBar(),
          SizedBox(height: 24.h),
          CarouselSlider(
            items: const [
              CustomHomeCard(
                cardType: AppStrings.xCard,
                cardMoney: AppStrings.lightCardMoney,
                cardCode: AppStrings.cardCode1,
                cardColor: AppColors.cardBlueLight,
                cardWidth: 207,
                cardHeight: 263,
              ),
              CustomHomeCard(
                cardType: AppStrings.mCard,
                cardMoney: AppStrings.darkCardMoney,
                cardCode: AppStrings.cardCode2,
                cardColor: AppColors.cardBlueDark,
                cardWidth: 207,
                cardHeight: 263,
              ),
            ],
            options: CarouselOptions(
              autoPlay: true,
              height: 263.h,
              viewportFraction: 0.70,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          SizedBox(height: 8.h),
          DotsIndicator(
            position: currentIndex.toDouble(),
            dotsCount: 2,
            animate: true,
            decorator: DotsDecorator(
              spacing: EdgeInsets.symmetric(horizontal: 4.r),
              color: Colors.grey,
              activeColor: AppColors.primary,
              size: Size.square(8.r),
              activeSize: Size(16.r, 8.r),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.r),
              ),
            ),
          ),
          SizedBox(height: 24.h),
          Expanded(
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                final items = [
                  (AppAssets.sendIcon, AppStrings.sendMoney),
                  (AppAssets.primaryWalletIcon, AppStrings.payTheBill),
                  (AppAssets.sendIcon, AppStrings.request),
                  (AppAssets.usersIcon, AppStrings.contact),
                ];
                return CustomHomeItem(
                  iconPath: items[index].$1,
                  title: items[index].$2,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomHomeItem extends StatelessWidget {
  const CustomHomeItem({
    super.key,
    required this.iconPath,
    required this.title,
  });

  final String iconPath;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.r),
      child: Container(
        constraints: BoxConstraints(
          minWidth: 140.w,
          maxWidth: 180.w,
          minHeight: 120.h,
          maxHeight: 160.h,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.borderItemColor, width: 1.w),
          borderRadius: BorderRadius.circular(16.r),
          color: AppColors.itemColor,
        ),
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 48.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color: AppColors.backgroundIconColor,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    iconPath,
                    width: 20.w,
                    height: 20.h,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 12.h),
              Flexible(
                child: Text(
                  title,
                  style: AppStyles.titleSmall.copyWith(fontSize: 16.sp),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
