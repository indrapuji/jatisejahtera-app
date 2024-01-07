import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:jatisejahtera/components/header_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List imageList = [
    {"id": 1, "image_path": 'assets/image/banner.png'},
    {"id": 1, "image_path": 'assets/image/banner.png'},
    {"id": 1, "image_path": 'assets/image/banner.png'},
  ];
  final CarouselController carouselController = CarouselController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HeaderCarousel(),
    );
  }
}
