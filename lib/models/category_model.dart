class Category {
  final String name;
  final String imageUrl;

  const Category({required this.name, required this.imageUrl});

  static List<Category> categories = const [
    Category(
        name: 'Water',
        imageUrl:
            'https://domf5oio6qrcr.cloudfront.net/medialibrary/7909/b8a1309a-ba53-48c7-bca3-9c36aab2338a.jpg'),
    Category(
        name: 'Soft Drinks',
        imageUrl:
            'https://media.istockphoto.com/photos/soft-drinks-splashing-picture-id655123574?k=20&m=655123574&s=170667a&w=0&h=kNfet0U_qBsFdHDhpPHk8532R03rkniDu9fPXx_bLLM='),
    Category(
        name: 'Smoothies',
        imageUrl:
            'https://hips.hearstapps.com/hmg-prod/images/delish-how-to-make-a-smoothie-horizontal-1542310071.png'),
  ];
}
