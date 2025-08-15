# Finance App

![Flutter Version](https://img.shields.io/badge/Flutter-3.8.0+-blue.svg)
![Dart Version](https://img.shields.io/badge/Dart-3.8.0+-blue.svg)
![License](https://img.shields.io/badge/License-MIT-green.svg)

A modern, feature-rich mobile finance application built with Flutter. This app provides users with a beautiful interface to manage their finances, track expenses, view statistics, and manage payment cards. The application features a responsive design, light and dark themes, and a consistent design language throughout.

## 📑 Table of Contents

- [Features](#-features)
- [Technologies Used](#️-technologies-used)
- [Architecture & State Management](#️-architecture--state-management)
- [Project Structure](#-project-structure)
- [Getting Started](#-getting-started)
- [Design System](#-design-system)
- [Navigation](#-navigation)
- [Testing](#-testing)
- [Contributing](#-contributing)
- [Author](#-author)
- [Acknowledgements](#-acknowledgements)

## 📱 Features

### Authentication

- **Welcome Screen** - Onboarding with options to login or register
- **Login** - Email/password authentication with form validation
- **Registration** - New user signup with form validation
- **Password Recovery** - Multi-step process with email verification
- **OTP Verification** - Secure one-time password verification

### Home Dashboard

- **Card Carousel** - Swipeable cards showing different payment methods
- **Balance Overview** - Current balance display with card details
- **Quick Actions** - Common financial actions like transfers and payments
- **Recent Transactions** - List of latest financial activities

### Card Management

- **Add New Cards** - Form with real-time card preview and validation
- **Card List** - View all payment cards with details
- **Card Details** - View card number, expiry date, and CVV

### Financial Statistics

- **Income/Expense Charts** - Visual bar charts of financial data
- **Period Selection** - View statistics by different time periods
- **Category Breakdown** - Financial data organized by categories

### User Profile

- **Personal Information** - View and edit user details
- **Settings** - App preferences and configuration
- **Appearance** - Toggle between light and dark themes

### UI/UX

- **Responsive Design** - Adapts to different screen sizes using ScreenUtil
- **Dark/Light Themes** - Complete theme support for both modes
- **Animations** - Smooth transitions and micro-interactions
- **Consistent Design Language** - Following material design principles

## 🛠️ Technologies Used

- **Flutter** - UI framework
- **Dart** - Programming language
- **Go Router** - Navigation and routing
- **Flutter SVG** - SVG rendering
- **FL Chart** - Interactive charts for financial statistics visualization
- **Carousel Slider** - Card carousel for the home dashboard
- **Pin Code Fields** - OTP input fields for verification screens
- **Flutter ScreenUtil** - Responsive UI scaling across different device sizes
- **Dots Indicator** - Page indicators for the card carousel

## 🏗️ Architecture & State Management

### UI Architecture

The app follows a component-based architecture with a clear separation of concerns:

- **Screens**: Represent full pages of the application
- **Components**: Reusable UI elements used across multiple screens
- **Constants**: Centralized configuration for colors, strings, and styles
- **Themes**: Light and dark theme configurations

### State Management

The app uses Flutter's built-in state management solutions:

- **StatefulWidget**: For local component state (e.g., form inputs, UI state)
- **TextEditingController**: For managing text input fields
- **IndexedStack**: For preserving state between bottom navigation tabs

### Data Flow

The current implementation uses static data for demonstration purposes:

- **Bar Chart Data**: Static data in `bar_chart_group_data.dart` for statistics visualization
- **Card Data**: Hardcoded in the UI components for demonstration
- **User Data**: Static strings in the profile screen

## 📂 Project Structure

``` text
lib/
├── components/       # Reusable UI components
│   ├── custom_app_bar.dart            # App bar with customizable title and icon
│   ├── custom_home_card.dart          # Card component for displaying financial cards
│   ├── custom_statistics_item.dart    # Component for statistics display
│   ├── custom_text_field.dart         # Custom input field with validation
│   ├── primary_button.dart            # Primary action button
│   └── ... other UI components
├── constants/        # App constants
│   ├── app_assets.dart                # Asset paths for images and icons
│   ├── app_colors.dart                # Color palette definitions
│   ├── app_strings.dart               # String constants used throughout the app
│   └── app_styles.dart                # Text styles and typography
├── data/             # Data models and static data
│   └── bar_chart_group_data.dart      # Data for statistics bar charts
├── models/           # Business logic models (placeholder directory)
├── routes/           # Routing configuration
│   ├── app_routes.dart                # Route path constants
│   └── router_config_generation.dart  # Go Router configuration
├── screens/          # App screens/pages
│   ├── add_card_screen.dart           # Screen for adding new payment cards
│   ├── home_page.dart                 # Main dashboard page
│   ├── home_screen.dart               # Container for bottom navigation
│   ├── login_screen.dart              # User authentication
│   ├── my_cards_screen.dart           # Card management screen
│   ├── statistics_screen.dart         # Financial statistics visualization
│   └── ... other screens
├── themes/           # Theme configuration
│   ├── dark_theme.dart                # Dark mode theme settings
│   └── light_theme.dart               # Light mode theme settings
├── validators/       # Input validation logic
│   └── app_validators.dart            # Form field validation methods
└── main.dart         # App entry point and initialization
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (latest stable version recommended)
- Dart SDK (included with Flutter)
- Android Studio or VS Code with Flutter extensions
- An emulator or physical device for testing

### Installation

1. Clone the repository

   ```bash
   git clone https://github.com/yourusername/finance_app.git
   cd finance_app
   ```

2. Install dependencies

   ```bash
   flutter pub get
   ```

3. Run the app

   ```bash
   flutter run
   ```

### Build for Production

#### Android

```bash
flutter build apk --release
```

The APK file will be available at `build/app/outputs/flutter-apk/app-release.apk`

#### iOS

```bash
flutter build ios --release
```

Open the generated Xcode project and archive it for App Store submission.

## 🎨 Design System

### Colors

The app uses a comprehensive color system defined in `app_colors.dart`:

#### Brand Colors

- **Primary**: #617AFD - Main brand color used for buttons, links, and active states
- **Card Blue Light**: #4831D4 - Used for X-Card and lighter UI elements
- **Card Blue Dark**: #3D1F94 - Used for M-Card and darker UI elements

#### Text Colors

- **Text Primary**: #0D0E0F - Main text color for important content
- **Text Secondary**: #8A8A8D - Secondary text color for less important information
- **Text Hint**: #8391A1 - Used for placeholder text in input fields
- **Text White**: #FFFFFF - Used for text on dark backgrounds

#### Background Colors

- **Background**: #FFFFFF - Main screen background color
- **Background Light Gray**: #F2F2F7 - Used for input fields and some containers

#### Semantic Colors

- **Success**: #34C759 - Used for success indicators and confirmations
- **Error**: #FF3B30 - Used for error messages and alerts

#### Chart Colors

- **Chart Bar Dark**: #2C3E50 - Used for the darker bars in statistics charts
- **Bar Chart Color**: #303A6E - Used for secondary bars in charts

### Typography

The app uses the Urbanist font family with a comprehensive type system defined in `app_styles.dart`:

- **Title Large**: 30sp, Bold - Used for main headings and welcome screens
- **Title Medium**: 20sp, SemiBold - Used for section titles and card headers
- **Body Large**: 16sp, Medium - Used for descriptive text and form labels
- **Body Medium**: 18sp, SemiBold - Used for standard body text
- **Body Small**: 14sp, Regular - Used for secondary information
- **Button**: 16sp, SemiBold - Used for button text
- **Card Text**: 14sp, Medium - Used for text on cards
- **Balance**: 24sp, Bold - Used for displaying monetary values

All text styles are responsive using `flutter_screenutil` to ensure consistent appearance across different device sizes.

## 🔄 Navigation

The app uses Go Router for declarative routing with the following structure:

### Authentication Flow

- `/welcomeScreen` - Initial welcome screen with options to login or register
- `/loginScreen` - User login with email/password and social options
- `/registerScreen` - New user registration with form validation
- `/forgotPasswordScreen` - Password recovery initiation
- `/otpVerificationScreen` - One-time password verification
- `/createNewPasswordScreen` - Create new password with validation
- `/passwordChangedScreen` - Success confirmation after password change

### Main App Flow

- `/homeScreen` - Main app container with bottom navigation
  - Home tab - Dashboard with card carousel and quick actions
  - Statistics tab - Financial data visualization with bar charts
  - Add Card tab - Form to add new payment cards
  - My Cards tab - List of user's payment cards
  - Profile tab - User information and settings

## 🧪 Testing

### Unit Tests

Run unit tests to verify individual functions and classes:

```bash
flutter test
```

### Widget Tests

Test UI components in isolation:

```bash
flutter test test/widget_test.dart
```

### Integration Tests

Run end-to-end tests that simulate user interactions:

```bash
flutter test integration_test
```

### Code Coverage

Generate code coverage reports:

```bash
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html
```

View the coverage report by opening `coverage/html/index.html` in your browser.

## 🤝 Contributing

Contributions are welcome! Please follow these steps to contribute:

### Development Workflow

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Code Style

This project follows the official [Flutter style guide](https://flutter.dev/docs/development/tools/formatting) and uses the Flutter linter rules defined in `analysis_options.yaml`.

- Run `flutter analyze` before submitting PRs to ensure code quality
- Format your code with `flutter format .`

### Reporting Issues

When reporting issues, please use the provided issue templates and include:

- A clear and descriptive title
- Steps to reproduce the issue
- Expected behavior
- Actual behavior
- Screenshots if applicable
- Device information (OS, Flutter version, etc.)

### Feature Requests

Feature requests are welcome. Please provide:

- A clear description of the feature
- Any relevant mockups or examples
- Why this feature would be beneficial to the project

## 👨‍💻 Author

Omar Hossam - [**GitHub Profile**](https://github.com/OmarHossam666)

## 🙏 Acknowledgements

- [Flutter](https://flutter.dev/) - UI framework for building natively compiled applications
- [Dart](https://dart.dev/) - Programming language optimized for building user interfaces
- [Go Router](https://pub.dev/packages/go_router) - Declarative routing package for Flutter
- [Flutter SVG](https://pub.dev/packages/flutter_svg) - SVG rendering and widget library
- [FL Chart](https://pub.dev/packages/fl_chart) - Interactive and responsive chart library
- [Flutter ScreenUtil](https://pub.dev/packages/flutter_screenutil) - Adaptation for different screen sizes
- [Carousel Slider](https://pub.dev/packages/carousel_slider) - Carousel widget for Flutter
- [Pin Code Fields](https://pub.dev/packages/pin_code_fields) - PIN code input fields
- [Dots Indicator](https://pub.dev/packages/dots_indicator) - Page indicator for carousels
