import 'package:cadence/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CadenceApp', () {
    testWidgets('renders a MaterialApp', (tester) async {
      await tester.pumpWidget(const CadenceApp());

      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}
