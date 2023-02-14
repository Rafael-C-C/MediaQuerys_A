import 'package:flutter/material.dart';
import 'package:mediaqueryexample/screens/secondScreen.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.shade100,
      width: 150,
      height: double.infinity,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "SideBar",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SecondScreen()));
                      },
                      icon: const Icon(Icons.person_2_rounded)),
                  const Text("Mi perfil")
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_bag_rounded)),
                  const Text("Ir de compras")
                ],
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
                  const Text("Ver mi carrito")
                ],
              ),
              Column(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
                  const Text("Cerrar sesión")
                ],
              ),
              Column(
                children: [
                  IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
                  const Text("Cerrar sesión")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
