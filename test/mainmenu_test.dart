import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cfmkids/main.dart';

void main() {
  testWidgets('Login button and signup button test',
      (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    //Verify that the Login button is displayed
    final loginBtn = find.byKey(const Key('loginBtn'));
    expect(loginBtn, findsOneWidget);

    //Verify that the Signup button is displayed
    final signupBtn = find.byKey(const Key('signupBtn'));
    expect(signupBtn, findsOneWidget);

    // Check if the background and logo are visible
    expect(
        find.image(const AssetImage('assets/bg1920x1080.jpg')), findsOneWidget);
    expect(find.image(const AssetImage('assets/logo-v1.png')), findsOneWidget);
  });

  testWidgets('Back button navigates back to the previous screen',
      (WidgetTester testerM) async {
    // Build the SignupPage widget
    await testerM.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: Center(),
      ),
    ));

    // Push the SignupPage widget onto the stack
    await testerM.tap(find.byIcon(Icons.arrow_back));
    await testerM.pumpAndSettle();

    // Check if the previous screen is displayed
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
