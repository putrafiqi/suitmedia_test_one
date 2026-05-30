// Ignore for testing purposes

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:suitmedia_test_one/app/app.dart';

void main() {
  group('App', () {
    late Dio dio;
    setUp(() {
      dio = Dio();
    });
    testWidgets('renders MaterialApp', (tester) async {
      await tester.pumpWidget(App(dio: dio));
      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}
