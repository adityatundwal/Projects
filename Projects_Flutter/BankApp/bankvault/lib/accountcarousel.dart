import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AccountCarousel extends StatefulWidget {
  const AccountCarousel({super.key});

  @override
  State<AccountCarousel> createState() => _AccountCarouselState();
}

class _AccountCarouselState extends State<AccountCarousel> {
  final List<String> images = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/mage3.png',
  ];

  List<Widget> ImageGenerator() {
    return images
        .map(
          (e) => ClipRRect(
            child: Image.asset(
              e,
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15),
      child: Stack(children: [
        CarouselSlider(
          items: ImageGenerator(),
          options: CarouselOptions(
              enlargeCenterPage: true, autoPlay: true, aspectRatio: 18 / 8),
        )
      ]),
    );
  }
}
