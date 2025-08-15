import 'package:finance_app/themes/dark_theme.dart';
import 'package:finance_app/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:finance_app/routes/router_config_generation.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Global error handling
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
  };

  runApp(const FinanceApp());
}

class FinanceApp extends StatelessWidget {
  const FinanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: RouterConfigGeneration.goRouter,
          title: 'Finance App',
          debugShowCheckedModeBanner: false,
          theme: LightTheme.lightTheme,
          darkTheme: DarkTheme.darkTheme,
          themeMode: ThemeMode.light,
        );
      },
    );
  }
}
