import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_automation_demo/src/counter.dart';

void main() {
  testWidgets('increments counter on FAB tap', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: CounterPage()));

    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.byType(FloatingActionButton));
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
  });
}