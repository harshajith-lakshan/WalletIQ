import 'package:flutter/material.dart';
import 'package:walletiq/core/services/local_database_service.dart';

class LocaleProvider extends ChangeNotifier {
  static const String _localeKey = 'app_locale';
  static const String _defaultLocale = 'en';

  late Locale _currentLocale;

  LocaleProvider() {
    _currentLocale = const Locale('en');
    _loadLocalePreference();
  }

  Locale get currentLocale => _currentLocale;
  String get currentLanguageCode => _currentLocale.languageCode;

  bool get isEnglish => _currentLocale.languageCode == 'en';
  bool get isSinhala => _currentLocale.languageCode == 'si';
  bool get isTamil => _currentLocale.languageCode == 'ta';

  List<Locale> get supportedLocales => const [
    Locale('en'),
    Locale('si'),
    Locale('ta'),
  ];

  Future<void> _loadLocalePreference() async {
    try {
      final savedLocale = LocalDatabaseService.settingsBox.get(
        _localeKey,
        defaultValue: _defaultLocale,
      );
      _currentLocale = Locale(savedLocale as String);
    } catch (e) {
      _currentLocale = const Locale(_defaultLocale);
    }
  }

  void setEnglish() {
    _currentLocale = const Locale('en');
    _saveLocalePreference();
    notifyListeners();
  }

  void setSinhala() {
    _currentLocale = const Locale('si');
    _saveLocalePreference();
    notifyListeners();
  }

  void setTamil() {
    _currentLocale = const Locale('ta');
    _saveLocalePreference();
    notifyListeners();
  }

  void setLocale(String languageCode) {
    if (supportedLocales.any((locale) => locale.languageCode == languageCode)) {
      _currentLocale = Locale(languageCode);
      _saveLocalePreference();
      notifyListeners();
    } else {
      debugPrint('Unsupported language code: $languageCode');
    }
  }

  Future<void> _saveLocalePreference() async {
    try {
      await LocalDatabaseService.settingsBox.put(
        _localeKey,
        _currentLocale.languageCode,
      );
    } catch (e) {
      debugPrint('Error saving locale preference: $e');
    }
  }

  String getLocaleName(String languageCode) {
    switch (languageCode) {
      case 'en':
        return 'English';
      case 'si':
        return 'සිංහල';
      case 'ta':
        return 'தமிழ்';
      default:
        return languageCode;
    }
  }
}
