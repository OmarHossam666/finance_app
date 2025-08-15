import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // --- Brand Colors ---
  /// The primary brand color, used for buttons, links, and active states.
  static const Color primary = Color(0xFF617AFD);

  /// A lighter shade of the primary color, used for elements like the X-Card.
  static const Color cardBlueLight = Color(0xFF4831D4);

  /// A darker shade of the primary color, used for elements like the M-Card.
  static const Color cardBlueDark = Color(0xFF3D1F94);

  // --- Text Colors ---
  /// The primary color for text, almost black.
  static const Color textPrimary = Color(0xFF0D0E0F);

  /// The secondary color for text, used for subtitles and less important information.
  static const Color textSecondary = Color(0xFF8A8A8D);

  /// The color for hint text within input fields.
  static const Color textHint = Color(0xFF8391A1);

  /// White text color, typically used on dark backgrounds like buttons and cards.
  static const Color textWhite = Colors.white;

  // --- Background Colors ---
  /// The main background color for most screens.
  static const Color background = Colors.white;

  /// A light grey color used for input field backgrounds and some card containers.
  static const Color backgroundLightGray = Color(0xFFF2F2F7);

  // --- Semantic Colors ---
  /// Color used to indicate success, like the checkmark on the "Password Changed!" screen.
  static const Color success = Color(0xFF34C759);

  /// Color used for error messages or indicators (standard red).
  static const Color error = Color(0xFFFF3B30);

  // --- Chart Colors ---
  /// The color for the darker bars in the statistics chart.
  static const Color chartBarDark = Color(0xFF2C3E50);

  // --- General Colors ---
  /// A solid white color.
  static const Color white = Colors.white;

  /// A solid black color.
  static const Color black = Colors.black;

  /// A transparent color.
  static const Color transparent = Colors.transparent;

  /// A dark background Color for Dark Mode
  static const Color darkBackground = Color(0xFF121212);

  /// A dark background color for app bar in dark mode
  static const Color darkAppBarBackground = Color(0xFF1E1E1E);

  /// A dark color for input fields in dark mode
  static const Color darkInputFieldColor = Color(0xFF2C2C2E);

  /// A dark color for bottom navigation bar in dark mode (match app bar color)
  static const Color darkBottomNavigationBarColor = Color(0xFF1E1E1E);

  /// A border side color for text fields
  static const Color textFieldBorderSideColor = Color(0xFFE8ECF4);

  /// A fill color for text fields
  static const Color textFieldFillColor = Color(0xFFF7F8F9);

  /// A fill color for text fields in dark mode
  static const Color darkTextFieldFillColor = Color(0xFF1E1E1E);

  /// A suffix icon color for text fields
  static const Color textFieldSuffixIconColor = Color(0xFF6A707C);

  /// A color for link text
  static const Color linkTextColor = Color(0xFF202955);

  /// A color for unselected item in bottom navigation bar
  static const Color unselectedItemColor = Color(0xFF9CA4AB);

  /// A color for card text
  static const Color cardTextColor = Color(0xFFFDFDFD);

  /// A color for border items in home screen
  static const Color borderItemColor = Color(0xFFE3E9ED);

  /// A color for items in home screen
  static const Color itemColor = Color(0xFFFDFDFD);

  /// A color for background icons in home screen
  static const Color backgroundIconColor = Color(0xFFECF1F6);

  /// A color for barcharts in statistics screen
  static const Color barChartColor = Color(0xFF303A6E);
}
