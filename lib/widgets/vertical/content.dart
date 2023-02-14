import 'package:banner_carousel/banner_carousel.dart';
import 'package:flutter/material.dart';
import 'package:mediaqueryexample/widgets/appbars/vertical_appbar.dart';
import 'package:mediaqueryexample/widgets/list_img.dart';

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheigth = MediaQuery.of(context).size.height;
    return Expanded(
      child: Container(
        color: Colors.yellow.shade100,
        child: Center(
          child: Column(
            children: [
              const Text(
                "Content",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              BannerCarousel(
                banners: listBanners,
                customizedIndicators: const IndicatorModel.animation(
                    width: 20, height: 5, spaceBetween: 2, widthAnimation: 50),
                height: 120,
                activeColor: Colors.red,
                disableColor: Colors.blue,
                animation: true,
                borderRadius: 10,
                width: 250,
                indicatorBottom: false,
              ),
              //Container(
              //  color: Colors.amber,
              //  width: 200,
              //  height: 100,
              //  child: Column(
              //    children: [
              //      Text("Altura: $screenheigth"),
              //      Text("Ancho: $screenwidth"),
              //    ],
              //  ),
              //),
              const VerticalAppbar(),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 400,
                width: 250,
                color: Colors.blue.shade100,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.green.shade100,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  const Text(
                                    "Titulo de producto",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    width: 80,
                                    child: Text(
                                        "Hola soy una descripción de producto-Hola soy una descripción de producto"),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.favorite)),
                                      ElevatedButton(
                                          onPressed: () {},
                                          child: const Text("Comprar"))
                                    ],
                                  )
                                ],
                              ),
                              Image.asset(
                                "assets/Foto.jpg",
                                height: 50,
                                width: 50,
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
