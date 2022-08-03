import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/blocs/wishlist/wishlist_bloc.dart';
import 'package:shop_app/widgets/custom_appbar.dart';
import 'package:shop_app/widgets/custom_navbar.dart';
import 'package:shop_app/widgets/product_card.dart';
import 'package:shop_app/widgets/wishlist_card.dart';

import '../../models/product_model.dart';

class WishlistScreen extends StatelessWidget {
  static const String routeName = '/wishlist';
  const WishlistScreen({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const WishlistScreen());
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> products;
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Wishlist',
      ),
      body: BlocBuilder<WishlistBloc, WishlistState>(builder: (context, state) {
        if (state is WishlistLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is WishlistLoaded) {
          return ListView.builder(
              itemCount: state.wishlist.products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: state.wishlist.products[index]);
              });
        } else {
          return const Text('Something went wrong');
        }
      }),
    );
  }
}
