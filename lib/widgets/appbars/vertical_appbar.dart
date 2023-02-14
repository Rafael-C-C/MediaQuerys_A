import 'package:flutter/material.dart';

class VerticalAppbar extends StatelessWidget {
  const VerticalAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.person_2_rounded)),
          ],
        ),
        Column(
          children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.shopping_bag_rounded)),
          ],
        ),
        Column(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
          ],
        ),
        Column(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
          ],
        ),
      ],
    );
  }
}

class Provisionalcard extends StatelessWidget {
  const Provisionalcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.red,
          width: 100,
          height: 100,
          child: const Text("Hola"),
        ),
        Container(
          color: Colors.blue,
          width: 100,
          height: 100,
          child: const Text("Hola"),
        ),
      ],
    );
  }
}
