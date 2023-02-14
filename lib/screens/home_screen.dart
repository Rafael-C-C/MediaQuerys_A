import 'package:flutter/material.dart';
import 'package:mediaqueryexample/widgets/horizontal/sidebar.dart';
import 'package:mediaqueryexample/widgets/vertical/content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isHorizontal(BuildContext context) =>
        MediaQuery.of(context).size.width >= 500;

    bool isVertical(BuildContext context) =>
        MediaQuery.of(context).size.width < 500;

    return Scaffold(
      appBar: AppBar(
        title: const Text("MediaQuerys"),
      ),
      body: Center(
        child: Row(
          children: [
            if (isHorizontal(context)) const SideBar(),
            if (isVertical(context)) const Content(),
          ],
        ),
      ),
    );
  }
}
