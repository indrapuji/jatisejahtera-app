import 'package:flutter/material.dart';
import 'package:jatisejahtera/config/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:jatisejahtera/models/content_model.dart';
import 'package:jatisejahtera/services/content_service.dart';

class HeaderCarousel extends StatefulWidget {
  const HeaderCarousel({super.key});

  @override
  State<HeaderCarousel> createState() => _HeaderCarouselState();
}

class _HeaderCarouselState extends State<HeaderCarousel> {
  List imageList = [
    {
      "id": 116,
      "title": "wa center",
      "subtitle": "",
      "desc": "https://jatisejahtera.or.id/",
      "image_url": "https://jati.pasangbajaringan.id/uploads/1698208780388.jpg",
      "category": "carousel",
      "status": true,
      "createdAt": "2023-10-25T04:39:40.405Z",
      "updatedAt": "2023-10-25T04:39:40.405Z"
    },
    {
      "id": 108,
      "title": "Pohon beringin",
      "subtitle": "",
      "desc": "https://jatisejahtera.or.id/",
      "image_url": "https://jati.pasangbajaringan.id/uploads/1688629641150.jpg",
      "category": "carousel",
      "status": true,
      "createdAt": "2023-07-06T07:47:21.165Z",
      "updatedAt": "2023-07-06T07:47:21.165Z"
    },
    {
      "id": 97,
      "title": "Hutan Jati",
      "subtitle": "",
      "desc": "https://jatisejahtera.or.id/",
      "image_url": "https://jati.pasangbajaringan.id/uploads/1688612664560.jpg",
      "category": "carousel",
      "status": true,
      "createdAt": "2023-07-06T03:04:24.562Z",
      "updatedAt": "2023-07-06T03:04:24.562Z"
    }
  ];
  final CarouselController carouselController = CarouselController();

  int currentIndex = 0;
  bool isLoading = true;

  List<Content> listCarousel = [];
  ContentService contentService = ContentService();

  fetchCarousel() async {
    listCarousel = await contentService.fetchCarousel();
    setState(() {});
    isLoading = false;
  }

  @override
  void initState() {
    fetchCarousel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : Column(
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {},
                    child: CarouselSlider(
                      items: listCarousel
                          .map(
                            (item) => Image.network(
                              item.imageUrl,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          )
                          .toList(),
                      carouselController: carouselController,
                      options: CarouselOptions(
                        scrollPhysics: const BouncingScrollPhysics(),
                        autoPlay: true,
                        aspectRatio: 1.6,
                        viewportFraction: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            currentIndex = index;
                          });
                        },
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: listCarousel.asMap().entries.map((entry) {
                        return GestureDetector(
                          onTap: () =>
                              carouselController.animateToPage(entry.key),
                          child: Container(
                            width: currentIndex == entry.key ? 17 : 7,
                            height: 7.0,
                            margin: const EdgeInsets.symmetric(
                              horizontal: 3.0,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: currentIndex == entry.key
                                    ? primaryColor
                                    : secondaryColor),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              )
            ],
          );
  }
}
