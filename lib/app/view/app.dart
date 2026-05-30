import 'package:flutter/material.dart';
import 'package:suitmedia_test_one/app/theme/theme.dart';
import 'package:suitmedia_test_one/l10n/l10n.dart';
import 'package:suitmedia_test_one/palindrome/palindrome.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const PalindromePage(),
    );
  }
}
