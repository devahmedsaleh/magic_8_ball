import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:magic_8_ball/main.dart';

void main() {
  testWidgets(
    'should have a valid appBar title',
    (WidgetTester tester) async {
      await tester.pumpWidget(Magic8Ball());

      final appBarWithTitle = find.widgetWithText(AppBar, 'Ask Me Anything');

      expect(appBarWithTitle, findsOneWidget);
    },
  );

  testWidgets(
    'should have a tappable image',
    (WidgetTester tester) async {
      await tester.pumpWidget(Magic8Ball());

      final textButtonFinder = find.byType(TextButton);
      final imgFinder = find.byType(Image);

      final imgDescendant =
          find.descendant(of: textButtonFinder, matching: imgFinder);

      expect(imgDescendant, findsOneWidget);
    },
  );

  testWidgets(
    'should randomize image on button tap',
    (WidgetTester tester) async {
      await tester.pumpWidget(Magic8Ball());

      final firstImgFinder = find.byType(Image);

      await tester.tap(find.byType(TextButton));
      await tester.pump();

      final secondImgFinder = find.byType(Image);

      expect(firstImgFinder, isNot(secondImgFinder));
    },
  );
}
