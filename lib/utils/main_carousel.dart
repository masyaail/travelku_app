import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../homepage.dart';

class MainCarousel extends StatelessWidget {
  const MainCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 300, // tentukan tinggi carousel
        autoPlay: true, // atur untuk memutar otomatis
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        // onPageChanged: callbackFunction,
        scrollDirection: Axis.horizontal,
      ),
      items: imgList
          .map((item) => Center(
              child: Card(
                  elevation: 4.0,
                  child: Image.network(item, fit: BoxFit.fill, width: 1000))))
          .toList(),
    );
  }
}
