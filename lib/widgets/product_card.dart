import 'package:flutter/material.dart';
import '../models/models.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: Card(
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.5,
          height: 120,
          child: Row(children: [
            Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width / 2.6,
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
                        IconButton(onPressed: () {}, icon: Icon(Icons.add))
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
