import 'package:flutter/material.dart';
import 'package:shop_app/widgets/custom_appbar.dart';
import 'package:shop_app/widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => CartScreen());
  }

  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Cart Page'),
      body: Text('View Cart Page'),
      bottomNavigationBar: CustomNavbar(),
    );
  }
}
