import 'package:flutter/material.dart';
import 'package:walletiq/core/services/local_database_service.dart';

class ThemeProvider extends ChangeNotifier {
  static const String _themeKey = 'app_theme';
  static const String _lightTheme = 'light';
  static const String _darkTheme = 'dark';
  static const String _amoledTheme = 'amoled';
  static const String _systemTheme = 'system';

  late String _currentTheme;
  late bool _isDarkMode;

  ThemeProvider() {
    _currentTheme = _systemTheme;
    _isDarkMode = false;
    _loadThemePreference();
  }

  String get currentTheme => _currentTheme;
  bool get isDarkMode => _isDarkMode;

  bool get isLightTheme => _currentTheme == _lightTheme;
  bool get isDarkThemeMode => _currentTheme == _darkTheme;
  bool get isAmoledTheme => _currentTheme == _amoledTheme;
  bool get isSystemTheme => _currentTheme == _systemTheme;

  Future<void> _loadThemePreference() async {
    try {
      final savedTheme = LocalDatabaseService.settingsBox.get(_themeKey, defaultValue: _systemTheme);
      _currentTheme = savedTheme as String;
      _updateDarkMode();
    } catch (e) {
      _currentTheme = _systemTheme;
      _updateDarkMode();
    }
  }

  void _updateDarkMode() {
    if (_currentTheme == _lightTheme) {
      _isDarkMode = false;
    } else if (_currentTheme == _amoledTheme) {
      _isDarkMode = true;
    } else if (_currentTheme == _darkTheme) {
      _isDarkMode = true;
    } else {
      // System theme - detect from device
      _isDarkMode = WidgetsBinding.instance.window.platformDispatcher.views.first.physicalSize.isEmpty
          ? false
          : MediaQueryData.fromView(WidgetsBinding.instance.window.platformDispatcher.views.first)
              .platformBrightness ==
              Brightness.dark;
    }
  }

  void setLightTheme() {
    _currentTheme = _lightTheme;
    _isDarkMode = false;
    _saveThemePreference();
    notifyListeners();
  }

  void setDarkTheme() {
    _currentTheme = _darkTheme;
    _isDarkMode = true;
    _saveThemePreference();
    notifyListeners();
  }

  void setAmoledTheme() {
    _currentTheme = _amoledTheme;
    _isDarkMode = true;
    _saveThemePreference();
    notifyListeners();
  }

  void setSystemTheme() {
    _currentTheme = _systemTheme;
    _updateDarkMode();
    _saveThemePreference();
    notifyListeners();
  }

  void toggleTheme() {
    if (_isDarkMode) {
      setLightTheme();
    } else {
      setDarkTheme();
    }
  }

  Future<void> _saveThemePreference() async {
    try {
      await LocalDatabaseService.settingsBox.put(_themeKey, _currentTheme);
    } catch (e) {
      debugPrint('Error saving theme preference: $e');
    }
  }
}
