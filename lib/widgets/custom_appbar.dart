import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool backButton;
  const CustomAppBar({Key? key, required this.title, this.backButton = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(title, style: Theme.of(context).textTheme.headline2),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))],
      automaticallyImplyLeading: backButton,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
