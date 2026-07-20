import 'package:flutter/material.dart';
import 'l10n/app_localizations.dart';
import 'core/app_theme.dart';
import 'features/splash/splash_screen.dart';

void main() {
  runApp(const TechnoprintApp());
}

class TechnoprintApp extends StatefulWidget {
  const TechnoprintApp({super.key});

  static TechnoprintAppState of(BuildContext context) =>
      context.findAncestorStateOfType<TechnoprintAppState>()!;

  @override
  State<TechnoprintApp> createState() => TechnoprintAppState();
}

class TechnoprintAppState extends State<TechnoprintApp> {
  Locale _locale = const Locale('ar');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    setState(() => _locale = locale);
  }

  void toggleLocale() {
    setLocale(_locale.languageCode == 'ar'
        ? const Locale('en')
        : const Locale('ar'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Technoprint',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      locale: _locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      home: const SplashScreen(),
    );
  }
}

class PlaceholderHomePage extends StatelessWidget {
  const PlaceholderHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
        actions: [
          TextButton.icon(
            onPressed: () => TechnoprintApp.of(context).toggleLocale(),
            icon: const Icon(Icons.language, color: Colors.white),
            label: Text(
              TechnoprintApp.of(context).locale.languageCode == 'ar'
                  ? 'EN'
                  : 'ع',
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.print, size: 96, color: AppColors.primary),
            const SizedBox(height: 16),
            Text(
              l10n.appTitle,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: AppColors.textDark,
              ),
            ),
            const SizedBox(height: 8),
            Text(l10n.welcomeMessage),
          ],
        ),
      ),
    );
  }
}
