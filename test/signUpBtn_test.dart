import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cfmkids/main.dart';
import 'package:cfmkids/mainpage.dart';

void main() {
  testWidgets('Button tap should trigger a function',
      (WidgetTester tester) async {
    // Build the widget tree
    await tester.pumpWidget(MaterialApp(
      home: HomePage(
        body: ElevatedButton(
          onPressed: () {
            print('Button tapped!');
          },
          child: Text('Button'),
        ),
      ),
    ));

    // Tap the button
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Verify that the function is called
    expect(find.text('Button tapped!'), findsOneWidget);
  });
}
