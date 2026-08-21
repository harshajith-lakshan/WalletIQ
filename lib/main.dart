import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:walletiq/config/localization/translations.dart';
import 'package:walletiq/config/routes/app_router.dart';
import 'package:walletiq/config/service_locator.dart';
import 'package:walletiq/config/theme/app_theme.dart';
import 'package:walletiq/shared/providers/auth_provider.dart';
import 'package:walletiq/shared/providers/locale_provider.dart';
import 'package:walletiq/shared/providers/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Setup services
  await setupServiceLocator();
  
  runApp(const WalletIQApp());
}

class WalletIQApp extends StatelessWidget {
  const WalletIQApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: Consumer2<ThemeProvider, LocaleProvider>(
        builder: (context, themeProvider, localeProvider, _) {
          return MaterialApp(
            title: 'WalletIQ',
            debugShowCheckedModeBanner: false,
            // Theme Setup
            theme: AppTheme.lightTheme(),
            darkTheme: themeProvider.isAmoledTheme 
                ? AppTheme.amoledTheme() 
                : AppTheme.darkTheme(),
            themeMode: _getThemeMode(themeProvider),
            // Localization
            locale: localeProvider.currentLocale,
            supportedLocales: localeProvider.supportedLocales,
            localizationsDelegates: const [
              DefaultMaterialLocalizations.delegate,
              DefaultWidgetsLocalizations.delegate,
            ],
            // Routing
            onGenerateRoute: AppRouter.generateRoute,
            initialRoute: AppRouter.splash,
          );
        },
      ),
    );
  }

  ThemeMode _getThemeMode(ThemeProvider themeProvider) {
    if (themeProvider.isLightTheme) {
      return ThemeMode.light;
    } else if (themeProvider.isDarkThemeMode || themeProvider.isAmoledTheme) {
      return ThemeMode.dark;
    } else {
      return ThemeMode.system;
    }
  }
}
