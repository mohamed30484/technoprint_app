import 'package:flutter_test/flutter_test.dart';

import 'package:technoprint_app/main.dart';

void main() {
  testWidgets('App renders placeholder home', (WidgetTester tester) async {
    await tester.pumpWidget(const TechnoprintApp());
    expect(find.text('معرض تكنوبرنت'), findsNWidgets(2));
  });
}
