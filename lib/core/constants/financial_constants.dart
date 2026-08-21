class FinancialConstants {
  // Financial Health Score Ranges
  static const int excellentScoreMin = 80;
  static const int goodScoreMin = 60;
  static const int fairScoreMin = 40;
  static const int poorScoreMin = 20;
  static const int excellentScoreMax = 100;

  // Spending Alerts
  static const double budgetWarningThreshold = 0.80; // 80% of budget
  static const double budgetAlertThreshold = 0.95; // 95% of budget

  // Loan & Goal Calculations
  static const double maxInterestRate = 100.0; // 100% per year
  static const double minInterestRate = 0.0;

  // Savings Thresholds
  static const double excellentSavingsRate = 0.20; // 20% of income
  static const double goodSavingsRate = 0.15; // 15% of income
  static const double fairSavingsRate = 0.10; // 10% of income

  // Forecast Constants
  static const int forecastDays7 = 7;
  static const int forecastDays30 = 30;
  static const int forecastDays90 = 90;
  static const int forecastDays365 = 365;

  // Transaction Limits
  static const double dailyTransactionLimit = 1000000.00;
  static const double monthlyTransactionLimit = 50000000.00;

  // Category Defaults
  static const List<String> defaultIncomeCategories = [
    'Salary',
    'Business',
    'Freelance',
    'Investment',
    'Gift',
    'Refund',
    'Other Income',
  ];

  static const List<String> defaultExpenseCategories = [
    'Food & Drinks',
    'Transport',
    'Shopping',
    'Bills & Utilities',
    'Entertainment',
    'Health',
    'Education',
    'Personal Care',
    'Subscription',
    'Other Expense',
  ];
}
