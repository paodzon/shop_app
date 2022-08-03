import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/blocs/wishlist/wishlist_bloc.dart';
import '../models/models.dart';

class WishlistCard extends StatelessWidget {
  final Product product;

  const WishlistCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Card(
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.15,
          height: 140,
          child: Row(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  Text(
                    product.category,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.price.toString(),
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        BlocBuilder<WishlistBloc, WishlistState>(
                            builder: ((context, state) {
                          return IconButton(
                              color: Colors.grey,
                              onPressed: () {
                                context
                                    .read<WishlistBloc>()
                                    .add(RemoveWishlistProduct(product));
                                const snackbar = SnackBar(
                                    content: Text('Removed to your Wishlist!'));
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackbar);
                              },
                              icon: const Icon(Icons.favorite));
                        })),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.add))
                      ],
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
