import 'package:finance_app/components/custom_app_bar.dart';
import 'package:finance_app/components/custom_statistics_item.dart';
import 'package:finance_app/constants/app_assets.dart';
import 'package:finance_app/constants/app_colors.dart';
import 'package:finance_app/constants/app_strings.dart';
import 'package:finance_app/constants/app_styles.dart';
import 'package:finance_app/data/bar_chart_group_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  final List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: AppStrings.reload,
        icon: Icons.more_horiz,
      ),
      backgroundColor: AppColors.background,
      body: Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppStrings.dateRange, style: AppStyles.bodySmall),
                TextButton.icon(
                  onPressed: () {},
                  label: Text(
                    AppStrings.monthly,
                    style: AppStyles.button.copyWith(
                      color: const Color(0xFF1F2C37),
                    ),
                  ),
                  icon: const Icon(Icons.keyboard_arrow_down),
                  style: TextButton.styleFrom(
                    minimumSize: Size(101.w, 38.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    foregroundColor: const Color(0xFF1F2C37),
                    backgroundColor: const Color(0xFFB9C4FF),
                  ),
                  iconAlignment: IconAlignment.end,
                ),
              ],
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: double.infinity,
              height: 200.h,
              child: BarChart(
                BarChartData(
                  barTouchData: BarTouchData(
                    touchTooltipData: BarTouchTooltipData(
                      getTooltipColor: (group) {
                        return Colors.grey;
                      },
                    ),
                  ),
                  borderData: FlBorderData(border: Border.all(width: 0)),
                  titlesData: FlTitlesData(
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 25.r,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            '${value.toInt()}k',
                            style: AppStyles.bodySmall,
                          );
                        },
                      ),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        reservedSize: 25.r,
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          return Text(
                            months[value.toInt() - 1],
                            style: AppStyles.bodySmall,
                          );
                        },
                      ),
                    ),
                  ),
                  gridData: const FlGridData(drawVerticalLine: false),
                  barGroups: barGroups,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomStatisticsItem(
                  iconPath: AppAssets.incomeIcon,
                  title: AppStrings.lightCardMoney,
                  subtitle: AppStrings.income,
                ),
                CustomStatisticsItem(
                  iconPath: AppAssets.outcomeIcon,
                  title: AppStrings.darkCardMoney,
                  subtitle: AppStrings.outcome,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
