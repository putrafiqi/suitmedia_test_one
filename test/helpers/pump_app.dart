import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:suitmedia_test_one/app/app.dart';
import 'package:suitmedia_test_one/l10n/l10n.dart';

extension PumpApp on WidgetTester {
  Future<void> pumpApp(Widget widget) {
    return pumpWidget(
      MaterialApp(
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: widget,
      ),
    );
  }
}
