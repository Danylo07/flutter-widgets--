import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_widgets_app/models/product.dart';
import 'package:mobile_widgets_app/widgets/product_card.dart';

void main() {
  const product = Product(
    id: 't1',
    name: 'Test product',
    price: 10,
    imageUrl: 'https://example.com/a.png',
  );

  testWidgets('renders name and price', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: ProductCard(product: product))),
    );
    expect(find.text('Test product'), findsOneWidget);
    expect(find.text('\$10.00'), findsOneWidget);
  });

  testWidgets('calls onAddToCart when cart button tapped', (tester) async {
    var called = false;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ProductCard(
            product: product,
            onAddToCart: () => called = true,
          ),
        ),
      ),
    );
    await tester.tap(find.byIcon(Icons.add_shopping_cart));
    await tester.pump(const Duration(milliseconds: 500));
    expect(called, isTrue);
  });
}
