import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:photo_management_app/main.dart'; // Make sure the import path is correct

void main() {
  testWidgets('Test Home Widget', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: Home())); // Use MaterialApp if needed

    // Verify that 'No photos yet.' text is initially present.
    expect(find.text('No photos yet.'), findsOneWidget);

    // Simulate tapping the '+' button.
    await tester.tap(find.byIcon(Icons.camera));
    await tester.pump();

    // Verify that after tapping the '+' button, there's no 'No photos yet.' text.
    expect(find.text('No photos yet.'), findsNothing);

    // You can add more test cases here based on your requirements.
  });
}
