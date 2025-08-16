import 'package:finance_app/core/routes/app_routes.dart';
import 'package:finance_app/features/login/ui/create_new_password_screen.dart';
import 'package:finance_app/features/login/ui/forgot_password_screen.dart';
import 'package:finance_app/features/home/ui/home_screen.dart';
import 'package:finance_app/features/login/ui/login_screen.dart';
import 'package:finance_app/features/otp/ui/otp_verification_screen.dart';
import 'package:finance_app/features/login/ui/password_changed_screen.dart';
import 'package:finance_app/features/register/register_screen.dart';
import 'package:finance_app/features/welcome/welcome_screen.dart';
import 'package:go_router/go_router.dart';

class RouterConfigGeneration {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.welcomeScreen,
    routes: [
      GoRoute(
        path: AppRoutes.welcomeScreen,
        name: AppRoutes.welcomeScreen,
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.registerScreen,
        name: AppRoutes.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.forgotPasswordScreen,
        name: AppRoutes.forgotPasswordScreen,
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: AppRoutes.otpVerificationScreen,
        name: AppRoutes.otpVerificationScreen,
        builder: (context, state) => const OtpVerificationScreen(),
      ),
      GoRoute(
        path: AppRoutes.createNewPasswordScreen,
        name: AppRoutes.createNewPasswordScreen,
        builder: (context, state) => const CreateNewPasswordScreen(),
      ),
      GoRoute(
        path: AppRoutes.passwordChangedScreen,
        name: AppRoutes.passwordChangedScreen,
        builder: (context, state) => const PasswordChangedScreen(),
      ),
      GoRoute(
        path: AppRoutes.homeScreen,
        name: AppRoutes.homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
    ],
  );
}
