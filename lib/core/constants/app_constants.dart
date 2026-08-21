class AppConstants {
  // App Info
  static const String appName = 'WalletIQ';
  static const String appVersion = '1.0.0';
  static const String appDescription = 'Smart Money Management Powered by Intelligence';

  // Financial Constants
  static const double minTransactionAmount = 0.01;
  static const double maxTransactionAmount = 999999999.99;
  static const int maxTransactionsInMemory = 1000;
  static const int defaultPageSize = 20;

  // Time Constants
  static const int sessionTimeoutMinutes = 1440; // 24 hours
  static const int syncIntervalSeconds = 300; // 5 minutes
  static const int notificationReminderHour = 21; // 9 PM
  static const int notificationReminderMinute = 30; // 30 mins

  // UI Constants
  static const double defaultPadding = 16.0;
  static const double defaultBorderRadius = 12.0;
  static const double cardBorderRadius = 16.0;
  static const double animationDuration = 300; // milliseconds

  // Database Constants
  static const String hiveUsersBox = 'users';
  static const String hiveTransactionsBox = 'transactions';
  static const String hiveWalletsBox = 'wallets';
  static const String hiveCategoriesBox = 'categories';
  static const String hiveLoansBox = 'loans';
  static const String hiveGoalsBox = 'goals';
  static const String hiveBudgetsBox = 'budgets';
  static const String hiveBillsBox = 'bills';
  static const String hiveSettingsBox = 'settings';
  static const String hiveSyncMetadataBox = 'sync_metadata';
}
