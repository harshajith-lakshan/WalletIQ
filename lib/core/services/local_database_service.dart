import 'package:hive_flutter/hive_flutter.dart';

class LocalDatabaseService {
  static const String _usersBox = 'users';
  static const String _transactionsBox = 'transactions';
  static const String _walletsBox = 'wallets';
  static const String _categoriesBox = 'categories';
  static const String _loansBox = 'loans';
  static const String _goalsBox = 'goals';
  static const String _budgetsBox = 'budgets';
  static const String _billsBox = 'bills';
  static const String _settingsBox = 'settings';
  static const String _syncMetadataBox = 'sync_metadata';

  static Future<void> initializeHive() async {
    await Hive.initFlutter();
    
    // Create boxes
    await Hive.openBox(_usersBox);
    await Hive.openBox(_transactionsBox);
    await Hive.openBox(_walletsBox);
    await Hive.openBox(_categoriesBox);
    await Hive.openBox(_loansBox);
    await Hive.openBox(_goalsBox);
    await Hive.openBox(_budgetsBox);
    await Hive.openBox(_billsBox);
    await Hive.openBox(_settingsBox);
    await Hive.openBox(_syncMetadataBox);
  }

  static Box get usersBox => Hive.box(_usersBox);
  static Box get transactionsBox => Hive.box(_transactionsBox);
  static Box get walletsBox => Hive.box(_walletsBox);
  static Box get categoriesBox => Hive.box(_categoriesBox);
  static Box get loansBox => Hive.box(_loansBox);
  static Box get goalsBox => Hive.box(_goalsBox);
  static Box get budgetsBox => Hive.box(_budgetsBox);
  static Box get billsBox => Hive.box(_billsBox);
  static Box get settingsBox => Hive.box(_settingsBox);
  static Box get syncMetadataBox => Hive.box(_syncMetadataBox);

  static Future<void> clearAllBoxes() async {
    await usersBox.clear();
    await transactionsBox.clear();
    await walletsBox.clear();
    await categoriesBox.clear();
    await loansBox.clear();
    await goalsBox.clear();
    await budgetsBox.clear();
    await billsBox.clear();
    await settingsBox.clear();
    await syncMetadataBox.clear();
  }

  static Future<void> clearUserData() async {
    await transactionsBox.clear();
    await walletsBox.clear();
    await categoriesBox.clear();
    await loansBox.clear();
    await goalsBox.clear();
    await budgetsBox.clear();
    await billsBox.clear();
    await syncMetadataBox.clear();
  }
}
