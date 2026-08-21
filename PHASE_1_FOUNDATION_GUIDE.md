# WalletIQ Phase 1: Foundation Setup Guide

**Status:** READY TO IMPLEMENT  
**Target Duration:** 1-2 weeks  
**Platform:** Android (Flutter)  
**Objective:** Build solid foundation for all subsequent phases

---

## Phase 1 Overview

Phase 1 establishes the Flutter project structure, architecture, theming, routing, and core utilities. This foundation enables fast feature development in subsequent phases.

**Core Deliverables:**
1. ✅ Flutter project initialized with Material 3
2. ✅ Light/Dark/AMOLED/System theme modes
3. ✅ Multi-language support (English, Sinhala, Tamil)
4. ✅ Routing architecture
5. ✅ Dependency injection setup
6. ✅ Shared UI components library
7. ✅ Error handling patterns
8. ✅ Local database foundation (Hive)

---

## Prerequisites

### Required Tools
- **Flutter SDK:** Latest stable (v3.13+)
- **Dart SDK:** v3.0+
- **Android SDK:** API 21+ (minimum)
- **Terminal/CLI:** Bash, Zsh, or PowerShell
- **Git:** For version control

### Mobile-First Development Setup (Termux/Android)

If developing on Android phone using **Termux**:

```bash
# Install Termux from F-Droid (better than Play Store)
# Then in Termux:
pkg update && pkg upgrade
pkg install git curl wget
pkg install python nodejs

# Install Flutter in Termux (prebuilt)
cd ~
wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter-linux-x64-version.tar.xz
tar xf flutter-linux-x64-version.tar.xz
export PATH="$PATH:$HOME/flutter/bin"
```

Alternatively, use **GitHub Codespaces** or **Acode** editor.

---

## Step 1: Create Flutter Project

### Option A: Terminal (Termux/Linux/Mac/Windows)

```bash
# Navigate to development directory
cd ~/projects

# Create new Flutter project
flutter create walletiq --android-language kotlin --ios-language swift

# Navigate into project
cd walletiq

# Verify Flutter setup
flutter doctor
```

### Option B: GitHub Web Editor

1. Go to: https://github.com/harshajith-lakshan/WalletIQ
2. Press `.` to open GitHub Codespaces editor
3. Create `.devcontainer/devcontainer.json` with Flutter support
4. Use terminal within Codespaces

### Project Structure After Creation

```
walletiq/
├── android/               # Android native code
├── ios/                   # iOS native code (not needed, but may exist)
├── lib/
│   └── main.dart         # Entry point
├── test/                 # Unit tests
├── pubspec.yaml          # Dependencies
├── pubspec.lock          # Locked versions
├── analysis_options.yaml # Linter rules
└── README.md
```

---

## Step 2: Configure pubspec.yaml Dependencies

Replace the auto-generated `pubspec.yaml` with this production-ready configuration:

```yaml
name: walletiq
description: Smart money management powered by intelligence.
publish_to: 'none'

version: 1.0.0+1

environment:
  sdk: '>=3.0.0 <4.0.0'
  flutter: '>=3.13.0'

dependencies:
  flutter:
    sdk: flutter
  flutter_localizations:
    sdk: flutter

  # === STATE MANAGEMENT & ARCHITECTURE ===
  provider: ^6.1.0
  get_it: ^7.6.0
  freezed_annotation: ^2.4.1

  # === FIREBASE ===
  firebase_core: ^2.24.0
  firebase_auth: ^4.15.0
  cloud_firestore: ^4.14.0
  firebase_storage: ^11.6.0
  firebase_messaging: ^14.7.0
  firebase_analytics: ^10.7.0
  firebase_crashlytics: ^11.7.0

  # === LOCAL DATABASE ===
  hive: ^2.2.3
  hive_flutter: ^1.1.0

  # === UI & COMPONENTS ===
  flutter_svg: ^2.0.10
  cached_network_image: ^3.3.1
  fl_chart: ^0.64.0
  intl: ^0.19.0

  # === LOCALIZATION ===
  easy_localization: ^3.0.2

  # === UTILITIES ===
  uuid: ^4.0.0
  dio: ^5.3.0

  # === PDF GENERATION ===
  pdf: ^3.10.6
  printing: ^5.11.0

  # === PLATFORM SPECIFIC ===
  flutter_local_notifications: ^16.0.1
  local_auth: ^2.2.0
  share_plus: ^7.2.1
  image_picker: ^1.0.4

  # === CONNECTIVITY ===
  connectivity_plus: ^5.0.1

  # === SECURE STORAGE ===
  flutter_secure_storage: ^9.0.0

dev_dependencies:
  flutter_test:
    sdk: flutter

  # === LINTING ===
  flutter_lints: ^3.0.1

  # === CODE GENERATION ===
  build_runner: ^2.4.6
  freezed: ^2.4.1
  hive_generator: ^2.0.1

  # === TESTING ===
  mockito: ^5.4.4
  integration_test:
    sdk: flutter

flutter:
  uses-material-design: true

  # === ASSETS ===
  assets:
    - assets/images/
    - assets/icons/
    - assets/logos/

  # === FONTS ===
  fonts:
    - family: Poppins
      fonts:
        - asset: assets/fonts/Poppins-Regular.ttf
        - asset: assets/fonts/Poppins-Bold.ttf
          weight: 700
        - asset: assets/fonts/Poppins-SemiBold.ttf
          weight: 600
```

### Install Dependencies

```bash
flutter pub get
```

---

## Step 3: Create Project Structure

Create this folder hierarchy in `lib/`:

```
lib/
├── main.dart                          # Entry point
├── config/
│   ├── theme/
│   │   ├── app_theme.dart            # Theme data
│   │   ├── color_schemes.dart        # Color definitions
│   │   └── text_styles.dart          # Typography
│   ├── routes/
│   │   └── app_router.dart           # Route definitions
│   └── localization/
│       ├── locale_keys.dart          # Localization keys
│       └── translations.dart         # Translation maps
├── core/
│   ├── constants/
│   │   ├── app_constants.dart
│   │   ├── currency_constants.dart
│   │   └── financial_constants.dart
│   ├── errors/
│   │   ├── exceptions.dart
│   │   └── failures.dart
│   ├── utils/
│   │   ├── currency_formatter.dart
│   │   ├── date_formatter.dart
│   │   └── validators.dart
│   └── services/
│       ├── firebase_service.dart
│       ├── local_database_service.dart
│       └── notification_service.dart
├── features/
│   ├── auth/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── dashboard/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── transactions/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── wallets/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── loans/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── goals/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── analytics/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── profile/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   └── settings/
│       ├── data/
│       ├── domain/
│       └── presentation/
├── shared/
│   ├── widgets/
│   │   ├── app_button.dart
│   │   ├── app_text_field.dart
│   │   ├── app_card.dart
│   │   ├── transaction_tile.dart
│   │   ├── wallet_card.dart
│   │   ├── empty_state_widget.dart
│   │   ├── error_widget.dart
│   │   └── loading_skeleton.dart
│   ├── dialogs/
│   │   ├── confirm_dialog.dart
│   │   ├── error_dialog.dart
│   │   └── success_dialog.dart
│   ├── models/
│   │   ├── user_model.dart
│   │   ├── transaction_model.dart
│   │   ├── wallet_model.dart
│   │   ├── loan_model.dart
│   │   ├── goal_model.dart
│   │   └── category_model.dart
│   └── providers/
│       ├── theme_provider.dart
│       ├── locale_provider.dart
│       └── auth_provider.dart
└── generated/
    └── l10n.dart                     # Auto-generated localization
```

Create all directories:

```bash
cd lib
mkdir -p config/theme config/routes config/localization
mkdir -p core/constants core/errors core/utils core/services
mkdir -p features/{auth,dashboard,transactions,wallets,loans,goals,analytics,profile,settings}/{data,domain,presentation}
mkdir -p shared/{widgets,dialogs,models,providers}
mkdir -p generated
cd ..
```

---

## Step 4: Initialize Hive (Local Database)

Create `lib/core/services/local_database_service.dart`:

```dart
import 'package:hive_flutter/hive_flutter.dart';

class LocalDatabaseService {
  static const String _usersBox = 'users';
  static const String _transactionsBox = 'transactions';
  static const String _walletsBox = 'wallets';
  static const String _categoriesBox = 'categories';
  static const String _loansBox = 'loans';
  static const String _goalsBox = 'goals';
  static const String _settingsBox = 'settings';

  static Future<void> initializeHive() async {
    await Hive.initFlutter();
    
    // Register adapters (will create these later)
    // Hive.registerAdapter(UserAdapter());
    // Hive.registerAdapter(TransactionAdapter());
    
    // Create boxes
    await Hive.openBox(_usersBox);
    await Hive.openBox(_transactionsBox);
    await Hive.openBox(_walletsBox);
    await Hive.openBox(_categoriesBox);
    await Hive.openBox(_loansBox);
    await Hive.openBox(_goalsBox);
    await Hive.openBox(_settingsBox);
  }

  static Box get usersBox => Hive.box(_usersBox);
  static Box get transactionsBox => Hive.box(_transactionsBox);
  static Box get walletsBox => Hive.box(_walletsBox);
  static Box get categoriesBox => Hive.box(_categoriesBox);
  static Box get loansBox => Hive.box(_loansBox);
  static Box get goalsBox => Hive.box(_goalsBox);
  static Box get settingsBox => Hive.box(_settingsBox);

  static Future<void> clearAllBoxes() async {
    await usersBox.clear();
    await transactionsBox.clear();
    await walletsBox.clear();
    await categoriesBox.clear();
    await loansBox.clear();
    await goalsBox.clear();
    await settingsBox.clear();
  }
}
```

---

## Step 5: Create Color Scheme

Create `lib/config/theme/color_schemes.dart`:

```dart
import 'package:flutter/material.dart';

class AppColorSchemes {
  // Light Mode
  static const ColorScheme lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF2563EB),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFDBEAFF),
    onPrimaryContainer: Color(0xFF001A41),
    secondary: Color(0xFF10B981),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFA7F3D0),
    onSecondaryContainer: Color(0xFF003D2C),
    tertiary: Color(0xFFEF4444),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFFFDAD6),
    onTertiaryContainer: Color(0xFF410E0B),
    error: Color(0xFFB3261E),
    onError: Color(0xFFFFFFFF),
    errorContainer: Color(0xFFF9DEDC),
    onErrorContainer: Color(0xFF410E0B),
    background: Color(0xFFFAFAFA),
    onBackground: Color(0xFF1F1F1F),
    surface: Color(0xFFFFFBFE),
    onSurface: Color(0xFF1F1F1F),
    surfaceVariant: Color(0xFFE7E0EC),
    onSurfaceVariant: Color(0xFF49454F),
    outline: Color(0xFF79747E),
    outlineVariant: Color(0xFFCAC7D0),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: Color(0xFF313033),
    inverseOnSurface: Color(0xFFF4EFF4),
    inversePrimary: Color(0xFFB3E5FC),
  );

  // Dark Mode
  static const ColorScheme darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFB3E5FC),
    onPrimary: Color(0xFF001A41),
    primaryContainer: Color(0xFF1F4F7F),
    onPrimaryContainer: Color(0xFFDBEAFF),
    secondary: Color(0xFF80F3D6),
    onSecondary: Color(0xFF003D2C),
    secondaryContainer: Color(0xFF006B52),
    onSecondaryContainer: Color(0xFFA7F3D0),
    tertiary: Color(0xFFFFB4B0),
    onTertiary: Color(0xFF410E0B),
    tertiaryContainer: Color(0xFF5E3733),
    onTertiaryContainer: Color(0xFFFFDAD6),
    error: Color(0xFFF2B8B5),
    onError: Color(0xFF601410),
    errorContainer: Color(0xFF8C1D18),
    onErrorContainer: Color(0xFFF9DEDC),
    background: Color(0xFF0F172A),
    onBackground: Color(0xFFF8FAFC),
    surface: Color(0xFF1E293B),
    onSurface: Color(0xFFF8FAFC),
    surfaceVariant: Color(0xFF49454F),
    onSurfaceVariant: Color(0xFFCAC7D0),
    outline: Color(0xFF94A3B8),
    outlineVariant: Color(0xFF49454F),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: Color(0xFFF4EFF4),
    inverseOnSurface: Color(0xFF313033),
    inversePrimary: Color(0xFF2563EB),
  );

  // AMOLED Dark Mode
  static const ColorScheme amoledColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFF64B5F6),
    onPrimary: Color(0xFF000000),
    primaryContainer: Color(0xFF1A3A52),
    onPrimaryContainer: Color(0xFFB3E5FC),
    secondary: Color(0xFF64F3D9),
    onSecondary: Color(0xFF000000),
    secondaryContainer: Color(0xFF004D3D),
    onSecondaryContainer: Color(0xFF80F3D6),
    tertiary: Color(0xFFFF8A80),
    onTertiary: Color(0xFF000000),
    tertiaryContainer: Color(0xFF4D0000),
    onTertiaryContainer: Color(0xFFFFB4B0),
    error: Color(0xFFEF5350),
    onError: Color(0xFF000000),
    errorContainer: Color(0xFF660000),
    onErrorContainer: Color(0xFFFFCDD2),
    background: Color(0xFF000000),
    onBackground: Color(0xFFFFFFFF),
    surface: Color(0xFF121212),
    onSurface: Color(0xFFFFFFFF),
    surfaceVariant: Color(0xFF2D2D2D),
    onSurfaceVariant: Color(0xFFB3B3B3),
    outline: Color(0xFF808080),
    outlineVariant: Color(0xFF2D2D2D),
    shadow: Color(0xFF000000),
    scrim: Color(0xFF000000),
    inverseSurface: Color(0xFFEDEDED),
    inverseOnSurface: Color(0xFF1A1A1A),
    inversePrimary: Color(0xFF1976D2),
  );
}
```

---

## Step 6: Create Theme Data

Create `lib/config/theme/app_theme.dart`:

```dart
import 'package:flutter/material.dart';
import 'color_schemes.dart';
import 'text_styles.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorSchemes.lightColorScheme,
      textTheme: AppTextStyles.lightTextTheme,
      scaffoldBackgroundColor: AppColorSchemes.lightColorScheme.background,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColorSchemes.lightColorScheme.surface,
        foregroundColor: AppColorSchemes.lightColorScheme.onSurface,
        centerTitle: false,
      ),
      cardTheme: CardTheme(
        color: AppColorSchemes.lightColorScheme.surface,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          backgroundColor: Colors.transparent,
          foregroundColor: AppColorSchemes.lightColorScheme.primary,
        ),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColorSchemes.lightColorScheme.primary,
          foregroundColor: AppColorSchemes.lightColorScheme.onPrimary,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColorSchemes.lightColorScheme.primary,
          side: BorderSide(color: AppColorSchemes.lightColorScheme.primary),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColorSchemes.lightColorScheme.primaryContainer,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorSchemes.darkColorScheme,
      textTheme: AppTextStyles.darkTextTheme,
      scaffoldBackgroundColor: AppColorSchemes.darkColorScheme.background,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColorSchemes.darkColorScheme.surface,
        foregroundColor: AppColorSchemes.darkColorScheme.onSurface,
        centerTitle: false,
      ),
      cardTheme: CardTheme(
        color: AppColorSchemes.darkColorScheme.surface,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColorSchemes.darkColorScheme.primary,
          foregroundColor: AppColorSchemes.darkColorScheme.onPrimary,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColorSchemes.darkColorScheme.primary,
          side: BorderSide(color: AppColorSchemes.darkColorScheme.primary),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColorSchemes.darkColorScheme.primaryContainer,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    );
  }

  static ThemeData amoledTheme() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColorSchemes.amoledColorScheme,
      textTheme: AppTextStyles.darkTextTheme,
      scaffoldBackgroundColor: AppColorSchemes.amoledColorScheme.background,
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: AppColorSchemes.amoledColorScheme.surface,
        foregroundColor: AppColorSchemes.amoledColorScheme.onSurface,
        centerTitle: false,
      ),
      cardTheme: CardTheme(
        color: AppColorSchemes.amoledColorScheme.surface,
        elevation: 1,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
```

---

## Step 7: Create Text Styles

Create `lib/config/theme/text_styles.dart`:

```dart
import 'package:flutter/material.dart';

class AppTextStyles {
  static const String _fontFamily = 'Poppins';

  static const TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Color(0xFF1F1F1F),
    ),
    displayMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Color(0xFF1F1F1F),
    ),
    displaySmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color(0xFF1F1F1F),
    ),
    headlineMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Color(0xFF1F1F1F),
    ),
    headlineSmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color(0xFF1F1F1F),
    ),
    titleLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Color(0xFF1F1F1F),
    ),
    bodyLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Color(0xFF1F1F1F),
    ),
    bodyMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Color(0xFF64748B),
    ),
    bodySmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 10,
      fontWeight: FontWeight.normal,
      color: Color(0xFF94A3B8),
    ),
    labelLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: Color(0xFF2563EB),
    ),
  );

  static const TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Color(0xFFF8FAFC),
    ),
    displayMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Color(0xFFF8FAFC),
    ),
    displaySmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Color(0xFFF8FAFC),
    ),
    headlineMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Color(0xFFF8FAFC),
    ),
    headlineSmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Color(0xFFF8FAFC),
    ),
    titleLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Color(0xFFF8FAFC),
    ),
    bodyLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Color(0xFFF8FAFC),
    ),
    bodyMedium: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Color(0xFF94A3B8),
    ),
    bodySmall: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 10,
      fontWeight: FontWeight.normal,
      color: Color(0xFF64748B),
    ),
    labelLarge: TextStyle(
      fontFamily: _fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: Color(0xFFB3E5FC),
    ),
  );
}
```

---

## Step 8: Create Localization Setup

Create `lib/config/localization/locale_keys.dart`:

```dart
class LocaleKeys {
  // === APP ===
  static const appTitle = 'app_title';
  static const appSubtitle = 'app_subtitle';

  // === AUTH ===
  static const login = 'login';
  static const signup = 'signup';
  static const logout = 'logout';
  static const email = 'email';
  static const password = 'password';
  static const forgotPassword = 'forgot_password';
  static const emailVerification = 'email_verification';

  // === DASHBOARD ===
  static const dashboard = 'dashboard';
  static const totalBalance = 'total_balance';
  static const totalIncome = 'total_income';
  static const totalExpense = 'total_expense';
  static const recentTransactions = 'recent_transactions';

  // === TRANSACTIONS ===
  static const addTransaction = 'add_transaction';
  static const editTransaction = 'edit_transaction';
  static const deleteTransaction = 'delete_transaction';
  static const transaction = 'transaction';
  static const income = 'income';
  static const expense = 'expense';
  static const transfer = 'transfer';

  // === WALLETS ===
  static const wallets = 'wallets';
  static const addWallet = 'add_wallet';
  static const wallet = 'wallet';

  // === LOANS ===
  static const loans = 'loans';
  static const addLoan = 'add_loan';
  static const lent = 'lent';
  static const borrowed = 'borrowed';

  // === GOALS ===
  static const goals = 'goals';
  static const addGoal = 'add_goal';
  static const goal = 'goal';

  // === ANALYTICS ===
  static const analytics = 'analytics';
  static const reports = 'reports';

  // === PROFILE ===
  static const profile = 'profile';
  static const settings = 'settings';

  // === ACTIONS ===
  static const save = 'save';
  static const cancel = 'cancel';
  static const delete = 'delete';
  static const edit = 'edit';
  static const add = 'add';
  static const done = 'done';

  // === VALIDATION ===
  static const fieldRequired = 'field_required';
  static const invalidEmail = 'invalid_email';
  static const passwordTooShort = 'password_too_short';
}
```

Create `lib/config/localization/translations.dart`:

```dart
const Map<String, Map<String, String>> translations = {
  'en': {
    'app_title': 'WalletIQ',
    'app_subtitle': 'Smart Money Management',
    'login': 'Login',
    'signup': 'Sign Up',
    'logout': 'Logout',
    'email': 'Email',
    'password': 'Password',
    'forgot_password': 'Forgot Password?',
    'email_verification': 'Email Verification',
    'dashboard': 'Dashboard',
    'total_balance': 'Total Balance',
    'total_income': 'Total Income',
    'total_expense': 'Total Expenses',
    'recent_transactions': 'Recent Transactions',
    'add_transaction': 'Add Transaction',
    'edit_transaction': 'Edit Transaction',
    'delete_transaction': 'Delete Transaction',
    'transaction': 'Transaction',
    'income': 'Income',
    'expense': 'Expense',
    'transfer': 'Transfer',
    'wallets': 'Wallets',
    'add_wallet': 'Add Wallet',
    'wallet': 'Wallet',
    'loans': 'Loans',
    'add_loan': 'Add Loan',
    'lent': 'Lent',
    'borrowed': 'Borrowed',
    'goals': 'Goals',
    'add_goal': 'Add Goal',
    'goal': 'Goal',
    'analytics': 'Analytics',
    'reports': 'Reports',
    'profile': 'Profile',
    'settings': 'Settings',
    'save': 'Save',
    'cancel': 'Cancel',
    'delete': 'Delete',
    'edit': 'Edit',
    'add': 'Add',
    'done': 'Done',
    'field_required': 'This field is required',
    'invalid_email': 'Please enter a valid email',
    'password_too_short': 'Password must be at least 6 characters',
  },
  'si': {
    'app_title': 'WalletIQ',
    'app_subtitle': 'බුද්ධිමත් මුදල් කළමනාකරණය',
    'login': 'ඇතුල් වන්න',
    'signup': 'ලියාපදිංචි වන්න',
    'logout': 'ඉවත් වන්න',
    'email': 'ඉ-තැපෑල',
    'password': 'මුරපදය',
    'forgot_password': 'මුරපදය අමතකයි?',
    'email_verification': 'ඉ-තැපෑල සත්‍යාපනය',
    'dashboard': 'ප්‍රධාන තිරය',
    'total_balance': 'මුළු ශේෂය',
    'total_income': 'මුළු ආදායම',
    'total_expense': 'මුළු වියදම',
    'recent_transactions': 'මෑත ගනුදෙනු',
    'add_transaction': 'ගනුදෙනුවක් එකතු කරන්න',
    'edit_transaction': 'ගනුදෙනුව සංස්කරණය කරන්න',
    'delete_transaction': 'ගනුදෙනුව මකන්න',
    'transaction': 'ගනුදෙනුව',
    'income': 'ආදායම',
    'expense': 'වියදම',
    'transfer': 'ස්ථানමාරණය',
    'wallets': 'පසුම්බි',
    'add_wallet': 'පසුම්බිය එකතු කරන්න',
    'wallet': 'පසුම්බිය',
    'loans': 'ණය',
    'add_loan': 'ණයක් එකතු කරන්න',
    'lent': 'ණයට දුන් ආකාරය',
    'borrowed': 'ණයට ගැනීම',
    'goals': 'ඉලක්ක',
    'add_goal': 'ඉලක්කයක් එකතු කරන්න',
    'goal': 'ඉලක්කය',
    'analytics': 'විश්ලේෂණ',
    'reports': 'වාර්තා',
    'profile': 'ගිණුම',
    'settings': 'සැකසුම්',
    'save': 'සුරකින්න',
    'cancel': 'අවලංගු කරන්න',
    'delete': 'මකන්න',
    'edit': 'සංස්කරණය කරන්න',
    'add': 'එකතු කරන්න',
    'done': 'සම්පූර්ණ',
    'field_required': 'මෙම ක්ෂේත්‍රය අවශ්‍ය වේ',
    'invalid_email': 'කරුණාකර වලංගු ඉ-තැපෑල ඇතුළත් කරන්න',
    'password_too_short': 'මුරපදය අවම වශයෙන් අක්ෂර ছයක් විය යුතු',
  },
  'ta': {
    'app_title': 'WalletIQ',
    'app_subtitle': 'அறிவுசார் பணி நிர்வாகம்',
    'login': 'உள்நுழைய',
    'signup': 'பதிவு செய்க',
    'logout': 'வெளியேறு',
    'email': 'மின்னஞ்சல்',
    'password': 'கடவுச்சொல்',
    'forgot_password': 'கடவுச்சொல்லை மறந்துவிட்டீர்களா?',
    'email_verification': 'மின்னஞ்சல் சரிபார்ப்பு',
    'dashboard': 'முகப்பு',
    'total_balance': 'மொத்த மீதி',
    'total_income': 'மொத்த வருமானம்',
    'total_expense': 'மொத்த செலவு',
    'recent_transactions': 'சமீபத்திய பரிவர்த்தனைகள்',
    'add_transaction': 'பரிவர்த்தனையைச் சேர்க்க',
    'edit_transaction': 'பரிவர்த்தனையைத் திருத்த',
    'delete_transaction': 'பரிவர்த்தனையை நீக்க',
    'transaction': 'பரிவர்த்தனை',
    'income': 'வருமானம்',
    'expense': 'செலவு',
    'transfer': 'பரிமாற்றம்',
    'wallets': 'பணப்பைகள்',
    'add_wallet': 'பணப்பையைச் சேர்க்க',
    'wallet': 'பணப்பை',
    'loans': 'கடன்கள்',
    'add_loan': 'கடனைச் சேர்க்க',
    'lent': 'கடன் கொடுக்கப்பட்ட',
    'borrowed': 'கடன் வாங்கியது',
    'goals': 'இலக்குகள்',
    'add_goal': 'இலக்கைச் சேர்க்க',
    'goal': 'இலக்கு',
    'analytics': 'பகுப்பாய்வு',
    'reports': 'அறிக்கைகள்',
    'profile': 'சுயவிவரம்',
    'settings': 'அமைப்புகள்',
    'save': 'சேமிக்க',
    'cancel': 'ரத்துசெய்க',
    'delete': 'நீக்க',
    'edit': 'திருத்த',
    'add': 'சேர்க்க',
    'done': 'முடிந்தது',
    'field_required': 'இந்த புலம் தேவைப்படுகிறது',
    'invalid_email': 'சரியான மின்னஞ்சலை உள்ளிடவும்',
    'password_too_short': 'கடவுச்சொல் குறைந்தபட்சம் 6 எழுத்துக்கள் இருக்க வேண்டும்',
  },
};
```

---

## Step 9: Create Dependency Injection Setup

Create `lib/config/service_locator.dart`:

```dart
import 'package:get_it/get_it.dart';
import 'package:walletiq/core/services/local_database_service.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Initialize Hive
  await LocalDatabaseService.initializeHive();
  
  // Register services
  getIt.registerSingleton<LocalDatabaseService>(
    LocalDatabaseService(),
  );

  // Firebase services (will add in Phase 2)
  // getIt.registerSingleton<FirebaseService>(FirebaseService());

  // Repositories (will add in Phase 3+)
  // getIt.registerSingleton<AuthRepository>(AuthRepository());
}
```

---

## Step 10: Create Main Entry Point

Create/Update `lib/main.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'config/theme/app_theme.dart';
import 'config/localization/locale_keys.dart';
import 'config/localization/translations.dart';
import 'config/service_locator.dart';
import 'shared/providers/theme_provider.dart';
import 'shared/providers/locale_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Setup service locator
  await setupServiceLocator();
  
  // Setup localization
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('si'),
        Locale('ta'),
      ],
      path: 'assets/translations',
      fallbackLocale: Locale('en'),
      assetLoader: CodegenLoader(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  @override
  void initState() {
    super.initState();
    _loadThemePreference();
  }

  Future<void> _loadThemePreference() async {
    // Load from local storage (will implement later)
  }

  void _setThemeMode(ThemeMode mode) {
    setState(() {
      _themeMode = mode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: LocaleKeys.appTitle.tr(),
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: _themeMode,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        EasyLocalization.of(context)?.delegate ?? NullLocalizationDelegate(),
      ],
      supportedLocales: [
        Locale('en'),
        Locale('si'),
        Locale('ta'),
      ],
      locale: context.locale,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                LocaleKeys.appTitle.tr(),
                style: Theme.of(context).textTheme.displayLarge,
              ),
              SizedBox(height: 16),
              Text(
                LocaleKeys.appSubtitle.tr(),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              SizedBox(height: 32),
              FilledButton(
                onPressed: () => _setThemeMode(
                  _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark,
                ),
                child: Text('Toggle Theme'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CodegenLoader extends AssetLoader {
  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) async {
    return translations[locale.languageCode] ?? translations['en'] ?? {};
  }
}

class NullLocalizationDelegate extends LocalizationsDelegate<dynamic> {
  @override
  bool isSupported(Locale locale) => false;

  @override
  Future<dynamic> load(Locale locale) async => null;

  @override
  bool shouldReload(LocalizationsDelegate<dynamic> old) => false;
}
```

---

## Step 11: Create Shared Theme Providers

Create `lib/shared/providers/theme_provider.dart`:

```dart
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners();
  }

  void toggleTheme() {
    _themeMode = _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}
```

Create `lib/shared/providers/locale_provider.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _currentLocale = Locale('en');

  Locale get currentLocale => _currentLocale;

  void setLocale(Locale locale) {
    _currentLocale = locale;
    notifyListeners();
  }

  void setLanguage(String languageCode) {
    _currentLocale = Locale(languageCode);
    notifyListeners();
  }
}
```

---

## Step 12: Verify Build

```bash
# Clean build
flutter clean

# Get dependencies
flutter pub get

# Run on emulator/device
flutter run

# Or run with specific device
flutter run -d <device-id>
```

---

## Phase 1 Checklist

- [ ] Flutter project created
- [ ] pubspec.yaml configured with all dependencies
- [ ] Project structure created (lib/, features/, shared/, etc.)
- [ ] Hive initialized
- [ ] Color schemes defined (Light, Dark, AMOLED)
- [ ] Theme data created
- [ ] Text styles created
- [ ] Localization keys and translations created (EN, SI, TA)
- [ ] Service locator setup
- [ ] Main entry point implemented
- [ ] Theme provider created
- [ ] Locale provider created
- [ ] App compiles without errors
- [ ] Theme toggle works
- [ ] Localization displays correctly
- [ ] Tests created for theme switching

---

## Next Steps (After Phase 1 Completion)

→ **Phase 2: Authentication**
- Firebase Auth integration
- Email/password login
- Google OAuth
- User profile setup
- Email verification

---

**End of Phase 1 Guide**

Expected completion: 1-2 weeks with consistent daily work.

Questions? Check:
1. Flutter documentation: https://flutter.dev/docs
2. Firebase docs: https://firebase.google.com/docs
3. Hive docs: https://docs.hivedb.dev/
4. Material 3 guide: https://m3.material.io/
