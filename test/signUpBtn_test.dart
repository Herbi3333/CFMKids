import 'package:cfmkids/main.dart';
import 'package:cfmkids/mainpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cfmkids/signup.dart';

void main() {
  testWidgets('Signup button triggers the correct action',
      (WidgetTester testerSUB) async {
    // Build the SignupPage widget
    await testerSUB.pumpWidget(const MaterialApp(home: SignupPage()));

    // Tap the signup button
    await testerSUB.tap(find.byKey(const Key('signupBtn')));
    await testerSUB.pumpAndSettle();

    // Check if the MainPage widget is pushed onto the stack
    expect(find.byType(MainPage), findsNothing);
  });

  testWidgets('Email, password and confirm password input fields are visible',
      (WidgetTester testerSUB) async {
    // Build the SignupPage widget
    await testerSUB.pumpWidget(const MaterialApp(home: SignupPage()));

    // Check if the email and password input fields are visible
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Confirm password'), findsOneWidget);
  });

  testWidgets('Back button navigates back to the previous screen',
      (WidgetTester testerSUB) async {
    // Build the SignupPage widget
    await testerSUB.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: Center(),
      ),
    ));

    // Push the SignupPage widget onto the stack
    await testerSUB.tap(find.byIcon(Icons.arrow_back_ios));
    await testerSUB.pumpAndSettle();

    // Check if the previous screen is displayed
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
