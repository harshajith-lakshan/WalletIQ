# WalletIQ

**Smart Money Management Powered by Intelligence**

[![Flutter](https://img.shields.io/badge/Flutter-3.13+-blue.svg)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.0+-green.svg)](https://dart.dev)
[![Firebase](https://img.shields.io/badge/Firebase-Latest-orange.svg)](https://firebase.google.com)
[![License](https://img.shields.io/badge/License-MIT-brightgreen.svg)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Phase%202-yellow.svg)](#development-phases)

---

## 📱 Overview

WalletIQ is a **production-ready**, **offline-first** personal finance management application for Android, built with Flutter and Firebase. It combines intuitive design, intelligent insights, and comprehensive financial tools to help users manage their money smartly.

**Core Philosophy:** Real data. Real calculations. No fake features.

**Target Users:** Individuals in Sri Lanka, India, and beyond who need smart, accessible financial management.

---

## ✨ Key Features

### 💼 Financial Management
- ✅ Income & Expense Tracking
- ✅ Unlimited Wallets (Cash, Bank, Credit Card, etc.)
- ✅ Smart Category System (Customizable)
- ✅ Transaction Search & Filters
- ✅ Wallet-to-Wallet Transfers
- 🔄 Recurring Transactions
- 💔 Loan Manager (Lent/Borrowed)
- 🎯 Financial Goals Tracking
- 📊 Budget Management
- 📑 Bill Reminders

### 📈 Analytics & Reports
- 📉 Income vs Expense Charts
- 🥧 Expense Breakdown by Category
- 📅 Monthly Comparison
- 📊 Financial Health Score
- 🔮 Cash Flow Forecasting
- 💡 AI-Powered Insights
- 📄 PDF Report Generation
- 📊 Data Export (JSON, CSV)

### 🔐 Security & Privacy
- 🔑 Firebase Authentication (Email, Google, Phone)
- 🔒 PIN/Biometric Lock
- 🛡️ Secure Data Isolation
- 🔐 Encrypted Local Storage
- 📜 Privacy Controls
- ✅ Firestore Security Rules

### 🌍 Multi-Language & Localization
- 🇬🇧 English
- 🇱🇰 Sinhala (සිංහල)
- 🇮🇳 Tamil (தமிழ்)
- 🎨 Light/Dark/AMOLED Themes
- 📱 Responsive Design

### 📡 Offline & Sync
- 📴 Offline-First Architecture
- 🔄 Automatic Cloud Sync
- ⚡ Local Hive Database
- 🤝 Conflict Resolution
- 📦 Backup & Restore

### 🤖 Intelligent Features
- 🎤 Voice Transaction Input
- 📸 Receipt OCR Scanning
- 💳 QR Payment Recording
- 🎯 Spending Recommendations
- 📊 Pattern Analysis

### 🎨 Premium UX/UI
- 📱 Material Design 3
- ✨ Smooth Animations
- 🎯 Glassmorphism Design
- ♿ Accessibility First
- ⚡ Performance Optimized

---

## 🏗️ Architecture

### Clean Architecture Pattern
```
lib/
├── core/              # Business logic, utilities, services
├── features/          # Feature-based modules (auth, dashboard, etc.)
├── shared/            # Reusable components, models, providers
├── config/            # Theme, localization, routes
└── generated/         # Auto-generated code
```

### Technology Stack
| Layer | Technology | Version |
|-------|-----------|---------|
| **Framework** | Flutter | 3.13+ |
| **Language** | Dart | 3.0+ |
| **State Management** | Provider | 6.1+ |
| **Database (Local)** | Hive | 2.2+ |
| **Database (Cloud)** | Firestore | Latest |
| **Authentication** | Firebase Auth | 4.15+ |
| **Storage** | Firebase Storage | 11.6+ |
| **Notifications** | FCM + Local | Latest |
| **Charts** | FL Chart | 0.64+ |
| **PDF** | PDF + Printing | Latest |

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK 3.13+ ([Install Flutter](https://flutter.dev/docs/get-started/install))
- Dart SDK 3.0+
- Android SDK 21+ (Minimum)
- A Firebase project ([Create Firebase Project](https://firebase.google.com))

### Installation

#### 1. Clone Repository
```bash
git clone https://github.com/harshajith-lakshan/WalletIQ.git
cd WalletIQ
```

#### 2. Install Dependencies
```bash
flutter pub get
```

#### 3. Configure Firebase
```bash
# Install Firebase CLI (if not already installed)
npm install -g firebase-tools

# Login to Firebase
firebase login

# Initialize Firebase for your project
firebase init

# Copy your google-services.json to android/app/
# Copy your GoogleService-Info.plist to ios/Runner/ (if building for iOS)
```

#### 4. Generate Code
```bash
# Generate necessary code files
flutter pub run build_runner build --delete-conflicting-outputs
```

#### 5. Run Application
```bash
# Run on connected device
flutter run

# Run on emulator
flutter emulators launch <emulator_name>
flutter run

# Run with specific device
flutter run -d <device_id>
```

---

## 📋 Development Phases

### Phase 0: Audit ✅ COMPLETED
- [x] Repository audit
- [x] Existing feature analysis
- [x] Reusable code identification
- [x] Risk assessment

📄 **Documentation:** [PROJECT_AUDIT.md](PROJECT_AUDIT.md)

---

### Phase 1: Foundation ✅ COMPLETED
- [x] Flutter project setup
- [x] Material 3 theme (Light/Dark/AMOLED/System)
- [x] Localization (EN, SI, TA)
- [x] Routing architecture
- [x] Dependency injection
- [x] Local database (Hive)
- [x] Shared UI components
- [x] Core utilities and services
- [x] Data models
- [x] State management providers

📄 **Documentation:** [PHASE_1_COMPLETION.md](PHASE_1_COMPLETION.md)

**Status:** ✅ 100% Complete | **Date:** August 21, 2026

---

### Phase 2: Authentication 🔄 IN PROGRESS
- [ ] Firebase Authentication setup
- [ ] Email/Password login
- [ ] Email/Password signup
- [ ] Email verification flow
- [ ] Google OAuth authentication
- [ ] Phone authentication
- [ ] Forgot password flow
- [ ] User profile setup & editing
- [ ] Session management & auto-login
- [ ] Logout functionality
- [ ] Delete account flow

📄 **Documentation:** [PHASE_2_AUTHENTICATION_GUIDE.md](PHASE_2_AUTHENTICATION_GUIDE.md)

**Expected Duration:** 1-2 weeks

---

### Phase 3: Core Finance 📅 PLANNED
- Dashboard with real data
- Transaction engine (add/edit/delete)
- Wallet management
- Category management
- Bulk transaction upload
- Transaction export

### Phase 4: Finance Management 📅 PLANNED
- Budgets system
- Loan manager
- Financial goals
- Bills manager
- Recurring transactions

### Phase 5: Analytics 📅 PLANNED
- Charts and visualizations
- Financial health score
- Cash flow forecasting
- Spending insights
- PDF report generation

### Phase 6: Reports & Backup 📅 PLANNED
- PDF reports
- JSON export/import
- CSV export
- Backup & restore
- Data sharing

### Phase 7: Offline & Sync 📅 PLANNED
- Local-first architecture
- Sync engine
- Conflict resolution
- Offline indicator
- Attachment sync

### Phase 8: Security 📅 PLANNED
- PIN lock
- Biometric authentication
- Auto-lock timer
- Hide balances
- Secure storage

### Phase 9: Smart Features 📅 PLANNED
- Voice input
- Receipt OCR
- QR payment recording
- AI insights
- Rule-based insights

### Phase 10: Android Features 📅 PLANNED
- Home screen widgets
- Android shortcuts
- Deep linking
- Share functionality
- Background sync

### Phase 11: Quality Assurance 📅 PLANNED
- Unit tests
- Widget tests
- Integration tests
- Performance testing
- Security testing

### Phase 12: Release Preparation 📅 PLANNED
- App icon & branding
- Splash screen
- Play Store preparation
- Versioning
- Analytics setup

---

## 📊 Project Progress

```
████████████████████░░░░░░░░░░░░░░░░░░░░░░  25% Complete

Phase 0: Audit ✅ DONE
Phase 1: Foundation ✅ DONE
Phase 2: Authentication 🔄 IN PROGRESS
Phases 3-12: Planned 📅
```

---

## 🛠️ Build & Run

### Development
```bash
# Development build
flutter run

# With verbose logging
flutter run -v

# Debug on specific device
flutter run -d <device_id>
```

### Testing
```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/features/auth/login_test.dart

# With coverage
flutter test --coverage
```

### Building
```bash
# Debug APK
flutter build apk --debug

# Release APK
flutter build apk --release

# App Bundle (for Play Store)
flutter build appbundle --release

# Split APKs by ABI
flutter build apk --split-per-abi --release
```

---

## 📁 Project Structure

```
walletiq/
├── android/                        # Android native code
│   ├── app/
│   │   ├── build.gradle           # Build configuration
│   │   └── src/main/AndroidManifest.xml
│   └── build.gradle
├── ios/                            # iOS native code
├── lib/
│   ├── main.dart                  # Entry point
│   ├── config/
│   │   ├── theme/                 # Material 3 theme
│   │   ├── localization/          # Translations
│   │   ├── routes/                # App router
│   │   └── service_locator.dart   # Dependency injection
│   ├── core/
│   │   ├── constants/             # App constants
│   │   ├── errors/                # Exception & Failure classes
│   │   ├── utils/                 # Formatters & Validators
│   │   └── services/              # Core services
│   ├── features/
│   │   ├── auth/                  # Authentication feature
│   │   ├── dashboard/             # Dashboard feature
│   │   ├── transactions/          # Transactions feature
│   │   ├── wallets/               # Wallets feature
│   │   ├── loans/                 # Loans feature
│   │   ├── goals/                 # Goals feature
│   │   ├── analytics/             # Analytics feature
│   │   └── profile/               # Profile feature
│   └── shared/
│       ├── models/                # Reusable data models
│       ├── providers/             # State management
│       └── widgets/               # Reusable UI components
├── test/                           # Tests
├── pubspec.yaml                   # Dependencies
└── README.md
```

---

## 🔐 Security Features

### Authentication
- Firebase Authentication (Email, Google, Phone)
- Email verification required
- Password reset flow
- Automatic session timeout (24 hours)
- Refresh token management

### Data Protection
- User data isolated by UID
- Firestore security rules enforced
- Encrypted local storage (flutter_secure_storage)
- PIN/Biometric lock option
- Auto-lock on app background

### Privacy
- Privacy Policy screen
- Terms of Service screen
- Data export functionality
- Account deletion with data wipe
- GDPR compliance ready

---

## 📱 Supported Platforms

- **Android** 5.0 (API 21) and above
- **Minimum:** API 21 (Android 5.0)
- **Target:** API 34 (Android 14)

iOS support planned for future phases.

---

## 🧪 Testing

### Unit Tests
```bash
flutter test
```

### Widget Tests
```bash
flutter test --tags="widget"
```

### Integration Tests
```bash
flutter drive --target=test_driver/app.dart
```

### Code Coverage
```bash
flutter test --coverage
lcov --list coverage/lcov.info
```

---

## 📚 Documentation

- **[PROJECT_AUDIT.md](PROJECT_AUDIT.md)** - Complete audit of existing features
- **[PHASE_1_COMPLETION.md](PHASE_1_COMPLETION.md)** - Phase 1 completion summary
- **[PHASE_2_AUTHENTICATION_GUIDE.md](PHASE_2_AUTHENTICATION_GUIDE.md)** - Phase 2 guide
- **[CONTRIBUTING.md](CONTRIBUTING.md)** - Contribution guidelines
- **[CHANGELOG.md](CHANGELOG.md)** - Version history

---

## 🤝 Contributing

We welcome contributions! Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, development process, and how to submit pull requests.

### Quick Start for Contributors
```bash
# 1. Fork the repository
# 2. Clone your fork
git clone https://github.com/YOUR_USERNAME/WalletIQ.git

# 3. Create a feature branch
git checkout -b feature/your-feature-name

# 4. Make changes and test
flutter test

# 5. Format code
dart format .

# 6. Analyze code
dart analyze

# 7. Commit with conventional messages
git commit -m "feat: add your feature"

# 8. Push and create pull request
git push origin feature/your-feature-name
```

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## 👥 Team

- **Lead Developer:** [@harshajith-lakshan](https://github.com/harshajith-lakshan)

---

## 🙏 Acknowledgments

- Flutter and Dart communities
- Firebase for backend services
- Material Design 3
- All open-source contributors

---

## 📞 Support

- **Issues:** [GitHub Issues](https://github.com/harshajith-lakshan/WalletIQ/issues)
- **Discussions:** [GitHub Discussions](https://github.com/harshajith-lakshan/WalletIQ/discussions)
- **Email:** [Create an issue for support](https://github.com/harshajith-lakshan/WalletIQ/issues/new)

---

## 🗺️ Roadmap

See [CHANGELOG.md](CHANGELOG.md) for detailed roadmap and upcoming features.

---

**Last Updated:** August 21, 2026  
**Current Phase:** 2 - Authentication (In Progress)  
**Overall Progress:** 25% (Phases 1-2 of 12)
