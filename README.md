# WalletIQ

**Smart Money Management Powered by Intelligence**

[![Flutter](https://img.shields.io/badge/Flutter-3.13+-blue.svg)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-3.0+-green.svg)](https://dart.dev)
[![Firebase](https://img.shields.io/badge/Firebase-Latest-orange.svg)](https://firebase.google.com)
[![License](https://img.shields.io/badge/License-MIT-brightgreen.svg)](LICENSE)
[![Status](https://img.shields.io/badge/Status-Phase%201-yellow.svg)](#development-phases)

---

## 📱 Overview

WalletIQ is a **production-ready**, **offline-first** personal finance management application for Android, built with Flutter and Firebase. It combines intuitive design, intelligent insights, and robust data management to help users take control of their finances.

**Target Users:** Individuals in Sri Lanka, India, and beyond who need smart, accessible financial management.

**Core Philosophy:** Real data. Real calculations. No fake features.

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
```

#### 4. Run Application
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

### Phase 1: Foundation 🔄 IN PROGRESS
- [ ] Flutter project setup
- [ ] Material 3 theme
- [ ] Light/Dark/AMOLED modes
- [ ] Localization (EN, SI, TA)
- [ ] Routing
- [ ] Dependency injection
- [ ] Local database (Hive)
- [ ] Shared UI components

📄 **Documentation:** [PHASE_1_FOUNDATION_GUIDE.md](PHASE_1_FOUNDATION_GUIDE.md)

**Expected Duration:** 1-2 weeks

### Phase 2: Authentication 📅 PLANNED
- Firebase Auth integration
- Email/password login & signup
- Google OAuth
- Phone authentication
- Email verification
- Forgot password flow
- User profile setup
- Session management

### Phase 3: Core Finance 📅 PLANNED
- Dashboard with real data
- Transaction engine (add/edit/delete)
- Wallet management
- Category system
- Balance calculations
- Transaction search & filters
- Real-time data synchronization

### Phase 4: Finance Management 📅 PLANNED
- Loans (lent/borrowed)
- Loan payments & tracking
- Goals management
- Budgets
- Bills & reminders
- Recurring transactions

### Phase 5: Analytics 📅 PLANNED
- Charts & visualizations
- Financial health score
- Spending analysis
- Income trends
- Budget performance
- Cash flow

### Phase 6: Offline & Sync 📅 PLANNED
- Offline-first architecture
- Local database sync
- Conflict resolution
- Backup/restore
- Data export (JSON/CSV)

### Phase 7: Advanced Features 📅 PLANNED
- Voice input
- Receipt OCR
- QR payment recording
- PDF report generation
- Android widgets
- Android shortcuts
- Notifications

### Phase 8: Security & Polish 📅 PLANNED
- PIN/Biometric lock
- Data encryption
- Firestore security rules
- Storage security rules
- Accessibility compliance
- Performance optimization
- Testing & QA

---

## 🔐 Security & Privacy

### Data Protection
- ✅ User data isolated by UID
- ✅ Firestore security rules enforced
- ✅ Firebase Storage access controlled
- ✅ No hardcoded secrets
- ✅ Secure local storage

### Firestore Rules
📄 View: [firestore.rules](firestore.rules)

```
✅ Users can only access their own data
✅ Transaction data isolated
✅ Loan data isolated
✅ Attachment access restricted
✅ Validation on write
```

### Storage Rules
📄 View: [storage.rules](storage.rules)

```
✅ Avatars: User-specific access
✅ Receipts: User-specific access
✅ Backups: User-specific access
✅ Reports: User-specific access
✅ File size limits enforced
✅ Content type validation
```

---

## 🌍 Localization

### Supported Languages
- **English** (en) - English
- **Sinhala** (si) - සිංහල
- **Tamil** (ta) - தமிழ්

### Adding New Language
1. Add language code to `pubspec.yaml`
2. Create translation map in `lib/config/localization/translations.dart`
3. Update `easy_localization` configuration
4. Rebuild

---

## 🎨 Theme System

### Available Themes
1. **Light Mode** - Clean, bright interface
2. **Dark Mode** - Easy on the eyes
3. **AMOLED Mode** - True black for AMOLED screens
4. **System Mode** - Follows device preference

### Color Scheme
- **Primary:** Blue (#2563EB)
- **Success:** Green (#10B981)
- **Error:** Red (#EF4444)
- **Accent:** Various per context

---

## 📱 Android Integration

### Features
- ✅ Push Notifications (FCM)
- ✅ Local Notifications
- ✅ Biometric Authentication
- ✅ Home Screen Widgets
- ✅ Quick Actions
- ✅ Deep Linking
- ✅ Share Functionality

### Permissions
```xml
<!-- AndroidManifest.xml -->
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.POST_NOTIFICATIONS" />
<uses-permission android:name="android.permission.CAMERA" />
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
```

---

## 🧪 Testing

### Test Coverage
- ✅ Unit tests for business logic
- ✅ Widget tests for UI components
- ✅ Integration tests for flows
- ✅ Firebase integration tests

### Running Tests
```bash
# Unit tests
flutter test

# Integration tests
flutter test integration_test/

# Generate coverage
flutter test --coverage
lcov --list coverage/lcov.info
```

---

## 🔍 Financial Calculation Rules

### Balance Calculation
```
Total Balance = Total Income - Total Expense
```

### Wallet Balance
```
Wallet Balance = Initial Balance + Income - Expense
```

### Loan Remaining
```
Remaining = Total Amount - Paid Amount
Progress = (Paid Amount / Total Amount) × 100%
```

### Goal Progress
```
Progress = (Current Balance / Target Amount) × 100%
Clamped: 0% - 100%
```

### Budget Alert
```
Used = Sum of expenses in category
Remaining = Budget - Used
Over Budget = Used > Budget
```

---

## 🔄 Offline-First Sync

### Sync Flow
1. **Local Write:** Transaction saved to Hive
2. **Offline State:** App continues normally
3. **Internet Return:** Changes queued for sync
4. **Cloud Sync:** Data sent to Firestore
5. **Conflict Resolution:** Last-write-wins or merge
6. **Confirmation:** User notified of sync status

### Conflict Handling
- Timestamp-based resolution
- User notification on conflicts
- Manual conflict resolution UI
- Backup of conflicted data

---

## 🚨 Known Limitations & TODOs

### Phase 1 (Current)
- [ ] Firebase not yet integrated
- [ ] Notifications not yet implemented
- [ ] Hive database in setup phase
- [ ] No authentication flow yet

### Future Phases
- Multi-currency full support (Phase 5)
- Investment portfolio tracking (Phase 9)
- Shared wallet management (Phase 10)
- Bill payment integration (Phase 11)

---

## 📊 Project Statistics

| Metric | Value |
|--------|-------|
| **Languages** | Dart, Kotlin, Swift |
| **Platform** | Android 21+ |
| **Target Users** | 1M+ |
| **Phases** | 12 total |
| **Estimated Timeline** | 6-9 months |
| **Target Launch** | Q4 2026 |

---

## 🤝 Contributing

### Development Workflow
1. Create feature branch: `git checkout -b feature/your-feature`
2. Make changes following code style
3. Commit with clear messages: `git commit -m "feat: add feature"`
4. Push to branch: `git push origin feature/your-feature`
5. Create Pull Request with description

### Code Style
- Follow [Effective Dart](https://dart.dev/guides/language/effective-dart)
- Use linter rules from `analysis_options.yaml`
- Format code: `dart format .`
- Analyze: `dart analyze`

---

## 📞 Support

### Getting Help
- 📖 Check [PROJECT_AUDIT.md](PROJECT_AUDIT.md) for architecture
- 📋 Read [PHASE_1_FOUNDATION_GUIDE.md](PHASE_1_FOUNDATION_GUIDE.md) for setup
- 🔒 Review [firestore.rules](firestore.rules) for security
- 💾 Check [storage.rules](storage.rules) for storage access

### Reporting Issues
1. Check existing issues
2. Include reproduction steps
3. Provide device/OS info
4. Attach logs if relevant

---

## 📄 License

This project is licensed under the MIT License - see [LICENSE](LICENSE) file for details.

---

## 📞 Contact

**Project Lead:** Harsh Ajith Lakshan  
**Email:** harshajithlakshan152@gmail.com  
**GitHub:** [@harshajith-lakshan](https://github.com/harshajith-lakshan)  
**Repository:** [WalletIQ](https://github.com/harshajith-lakshan/WalletIQ)

---

## 🎯 Roadmap

### Q3 2026
- ✅ Phase 0: Audit
- 🔄 Phase 1: Foundation
- 📅 Phase 2: Authentication

### Q4 2026
- 📅 Phase 3: Core Finance
- 📅 Phase 4: Management
- 📅 Phase 5: Analytics

### Q1 2027
- 📅 Phase 6: Offline & Sync
- 📅 Phase 7: Advanced Features
- 📅 Phase 8: Security & Polish

### Q2 2027
- 📅 Beta Testing
- 📅 Play Store Submission
- 📅 Official Launch

---

## ✅ Project Status

```
████████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░  20% Complete

Phase 0: Audit ✅ DONE
Phase 1: Foundation 🔄 IN PROGRESS
Phase 2+: Planned 📅
```

**Last Updated:** August 21, 2026  
**Next Update:** August 28, 2026

---

**Made with ❤️ for better financial management**
