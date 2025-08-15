import 'package:finance_app/components/custom_app_bar.dart';
import 'package:finance_app/components/custom_home_card.dart';
import 'package:finance_app/constants/app_colors.dart';
import 'package:finance_app/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCardsScreen extends StatelessWidget {
  const MyCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: const CustomAppBar(
        title: AppStrings.allCards,
        icon: Icons.more_horiz,
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 16.r),
        itemCount: 2,
        itemBuilder: (context, index) {
          final cards = [
            const CustomHomeCard(
              cardType: AppStrings.xCard,
              cardMoney: AppStrings.lightCardMoney,
              cardCode: AppStrings.cardCode1,
              cardColor: AppColors.cardBlueDark,
              cardWidth: double.infinity,
              cardHeight: 179,
            ),
            const CustomHomeCard(
              cardType: AppStrings.mCard,
              cardMoney: AppStrings.darkCardMoney,
              cardCode: AppStrings.cardCode2,
              cardColor: AppColors.cardBlueLight,
              cardWidth: double.infinity,
              cardHeight: 179,
            ),
          ];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.r, vertical: 8.r),
            child: cards[index],
          );
        },
      ),
    );
  }
}
