import 'package:flutter_test/flutter_test.dart';
import 'package:shop_ledger/main.dart';

void main() {
  testWidgets('Placeholder home screen renders app name', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ShopLedgerApp());

    expect(find.text('ShopLedger'), findsOneWidget);
    expect(find.text('Kirana POS'), findsOneWidget);
  });
}
