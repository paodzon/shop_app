import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isPopular,
    required this.isRecommended,
  });

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular];

  static List<Product> products = const [
    Product(
        name: 'Coke',
        category: 'Soft Drinks',
        imageUrl:
            'https://images.unsplash.com/photo-1567103472667-6898f3a79cf2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: 2.99,
        isPopular: false,
        isRecommended: false),
    Product(
        name: 'Schweppes',
        category: 'Soft Drinks',
        imageUrl:
            'https://images.unsplash.com/photo-1581006852262-e4307cf6283a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: 2.99,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'Coke',
        category: 'Soft Drinks',
        imageUrl:
            'https://images.unsplash.com/photo-1567103472667-6898f3a79cf2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: 4.99,
        isPopular: false,
        isRecommended: true),
    Product(
        name: 'Jarritos',
        category: 'Soft Drinks',
        imageUrl:
            'https://images.unsplash.com/photo-1603394630850-69b3ca8121ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: 5.99,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'Smoothie Drink #1',
        category: 'Smoothies',
        imageUrl:
            'https://images.unsplash.com/photo-1589734580748-6d9421464885?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=689&q=80',
        price: 4.99,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'Smoothie Drink #2',
        category: 'Smoothies',
        imageUrl:
            'https://images.unsplash.com/photo-1584587727565-a486d45d58b4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80',
        price: 5.99,
        isPopular: true,
        isRecommended: true),
    Product(
        name: 'Smoothie Drink #3',
        category: 'Smoothies',
        imageUrl:
            'https://images.unsplash.com/photo-1623065422902-30a2d299bbe4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: 2.99,
        isPopular: false,
        isRecommended: true),
    Product(
        name: 'Water #1',
        category: 'Water',
        imageUrl:
            'https://images.unsplash.com/photo-1551753103-f121bd83be46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: 2.99,
        isPopular: false,
        isRecommended: true),
    Product(
        name: 'Water #2',
        category: 'Water',
        imageUrl:
            'https://images.unsplash.com/photo-1626403550716-297bd8215bd0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
        price: 2.99,
        isPopular: false,
        isRecommended: true),
    Product(
        name: 'Water #3',
        category: 'Water',
        imageUrl:
            'https://images.unsplash.com/photo-1626810333910-c4a297aff6ab?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80',
        price: 2.99,
        isPopular: false,
        isRecommended: true),
  ];
}
