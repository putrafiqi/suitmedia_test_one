import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:suitmedia_test_one/app/bloc/user_bloc.dart';
import 'package:suitmedia_test_one/app/theme/theme.dart';
import 'package:suitmedia_test_one/l10n/l10n.dart';
import 'package:suitmedia_test_one/palindrome/palindrome.dart';

class App extends StatelessWidget {
  const App({required Dio dio, super.key}) : _dio = dio;

  final Dio _dio;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(dio: _dio),
      child: MaterialApp(
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const PalindromePage(),
      ),
    );
  }
}
