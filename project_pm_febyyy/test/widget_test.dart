import 'package:flutter_test/flutter_test.dart';
import 'package:project_pm_febyyy/main.dart';

void main() {
  testWidgets('Test tulisan nama dan NIM', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Feby Rahmawati Ahmaad - 244107060139'), findsOneWidget);
  });
}
