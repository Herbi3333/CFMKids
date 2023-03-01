import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:cfmkids/main.dart';

// TODO: Add test cases for Sign up button
// TODO: Add test cases to see if images displayed correctly
// TODO: Add test cases to see if the layout is centered and correctly displaying padding and spacing
// TODO: Add test cases to verify colors and texts for buttons
// TODO: Add test cases to verify the app against different screen sizes and orientations

void main() {
  testWidgets('Sign Up button test', (WidgetTester tester) async {
    // Build the widget
    await tester.pumpWidget(MaterialApp(
      home: HomePage(
        body: signupBtn(
          onPressed: () {
            print('Sign up Button tapped!');
          },
          child: Text('Button'),
        ),
      ),
    ));

    //Verify that the Sign Up button is displayed
    final signupBtn = find.byKey(const Key('signupBtn'));
    expect(signupBtn, findsOneWidget);

    // Tap the Sign Up button
    await tester.tap(signupBtn);
    await tester.pump();

    // Verify that the sign up button was pressed by checking for an action
    expect(find.byType(SnackBar), findsOneWidget);
    expect(find.text('Sign up Button tapped!'), findsOneWidget);
  });
}
