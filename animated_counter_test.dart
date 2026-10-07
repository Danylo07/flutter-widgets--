import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_widgets_app/widgets/animated_counter.dart';

Widget _wrap(Widget child) =>
    MaterialApp(home: Scaffold(body: Center(child: child)));

void main() {
  group('AnimatedCounter', () {
    testWidgets('shows initial value', (tester) async {
      await tester.pumpWidget(_wrap(const AnimatedCounter(initialValue: 3)));
      expect(find.text('3'), findsOneWidget);
    });

    testWidgets('increments and decrements', (tester) async {
      await tester.pumpWidget(_wrap(const AnimatedCounter(maxValue: 5)));

      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
      expect(find.text('1'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.remove));
      await tester.pumpAndSettle();
      expect(find.text('0'), findsOneWidget);
    });

    testWidgets('does not exceed maxValue', (tester) async {
      await tester.pumpWidget(
        _wrap(const AnimatedCounter(initialValue: 2, maxValue: 2)),
      );
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();
      expect(find.text('2'), findsOneWidget);
    });
  });
}
