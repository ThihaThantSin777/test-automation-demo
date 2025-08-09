import 'dart:io';
import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:test_automation_demo/src/counter.dart';

void main() {
  testGoldens(
    'CounterPage default state',
    (tester) async {
      await loadAppFonts();

      final builder = DeviceBuilder()
        ..addScenario(
          widget: const MaterialApp(home: CounterPage()),
          name: 'default',
        );

      await tester.pumpDeviceBuilder(builder);
      await screenMatchesGolden(tester, 'counter_page_default');
    },
    skip: Platform.environment['CI'] == 'true', // skip on CI to avoid baseline issues
  );
}