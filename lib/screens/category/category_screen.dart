import 'package:flutter/material.dart';
import 'package:shop_app/widgets/custom_appbar.dart';
import 'package:shop_app/widgets/product_card.dart';
import '../../models/models.dart';

class CategoryScreen extends StatelessWidget {
  static const String routeName = '/category';
  final String category;

  static Route route(argument) {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => CategoryScreen(
        category: argument,
      ),
    );
  }

  const CategoryScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProduct = Product.products
        .where(((product) => product.category == category))
        .toList();
    debugPrint('$categoryProduct');
    return Scaffold(
      appBar: CustomAppBar(
        title: category,
      ),
      body: ListView.builder(
          itemCount: categoryProduct.length,
          itemBuilder: (context, index) {
            return ProductCard(product: categoryProduct[index]);
          }),
    );
  }
}
