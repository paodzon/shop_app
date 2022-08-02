import 'package:flutter/material.dart';
import 'package:shop_app/models/category_model.dart';
import 'package:shop_app/widgets/custom_appbar.dart';
import 'package:shop_app/widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../models/models.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const HomeScreen());
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Beverage Shop',
        backButton: false,
      ),
      body: Column(children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            viewportFraction: 0.9,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
            enableInfiniteScroll: false,
            initialPage: 2,
            autoPlay: true,
          ),
          items: Category.categories
              .map((category) => HeroCarouselCard(category: category))
              .toList(),
        ),
        const SizedBox(
          height: 40,
        ),
        const SectionTitle(title: 'RECOMMENDED'),
        ProductCarousel(
          products: Product.products
              .where((product) => product.isRecommended)
              .toList(),
        ),
        const SectionTitle(title: 'FAVORITES'),
        ProductCarousel(
          products:
              Product.products.where((product) => product.isPopular).toList(),
        )
      ]),
      bottomNavigationBar: const CustomNavbar(),
    );
  }
}
