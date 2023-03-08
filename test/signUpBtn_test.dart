import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cfmkids/main.dart';

void main() {
  testWidgets('Button tap should trigger a function',
      (WidgetTester testerSUB) async {
    // Build the widget tree
    await testerSUB.pumpWidget(const MaterialApp(home: HomePage()));

    // Tap the button
    final signupBtn = find.byKey(const Key('signupBtn'));
    await testerSUB.tap(signupBtn);
    await testerSUB.pump();

    // Verify that the function is called
    expect(find.text('Sign Up Button Pressed'), findsOneWidget);
  });
}
