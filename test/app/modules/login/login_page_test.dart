import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  testWidgets('Login Page test', (WidgetTester tester) async {

    final text = find.byKey(const Key('start_text'));
    final startText = find.widgetWithText(TextButton, text.toString());
    final startTextButton = find.byKey(const Key('start_textButton'));
    
    expect(text, findsNothing);
    expect(startText, findsNothing);
    expect(startTextButton, findsNothing);

  });
}
