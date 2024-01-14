import 'package:flutter/material.dart';
import 'package:jatisejahtera/config/colors.dart';
import 'package:jatisejahtera/pages/welcome_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _controller = PageController();

  final List<Map<String, dynamic>> _pages = [
    {
      'images': 'assets/image/pengajuan.png',
      'title': 'Pengajuan Klaim Mudah',
      'description': 'Mulailah proses klaim Anda dengan cepat dan intuitif',
    },
    {
      'images': 'assets/image/panduan.png',
      'title': 'Panduan Langkah demi Langkah',
      'description':
          'Aplikasi yang jelas digunakan untuk memastikan pengajuan lebih mudah',
    },
    {
      'images': 'assets/image/unggah.png',
      'title': 'Unggah Dokumen',
      'description': 'Lampirkan dokumen pendukung, untuk mengajukan klaim Anda',
    },
    {
      'images': 'assets/image/tracking.png',
      'title': 'Real-Time Tracking',
      'description':
          'Tetap terupdate tentang status klaim Anda di setiap tahap, langsung di dalam aplikasi.',
    },
  ];

  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView.builder(
            controller: _controller,
            itemCount: _pages.length,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == _pages.length - 1);
              });
            },
            itemBuilder: (context, index) {
              return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 120, horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(_pages[index]['images']),
                      const SizedBox(height: 37),
                      Text(
                        _pages[index]['title'],
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 5, 150, 106)),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        _pages[index]['description'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 5, 150, 106),
                        ),
                      ),
                    ],
                  ));
            }),
        Container(
            alignment: const Alignment(0, 0.9),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/image/background_jati.png',
                    ),
                    alignment: Alignment.topCenter)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(3);
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: onLastPage ? Colors.white : Colors.black),
                    )),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 4,
                  effect: const ExpandingDotsEffect(
                    dotColor: secondaryColor,
                    activeDotColor: primaryColor,
                  ),
                  onDotClicked: (index) => _controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeIn,
                  ),
                ),
                GestureDetector(
                    onTap: onLastPage
                        ? () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const WelcomeScreen();
                            }));
                          }
                        : () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                    child: const Text(
                      'Next',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                // onLastPage
                //     ? GestureDetector(
                //         onTap: () {
                //           Navigator.push(context,
                //               MaterialPageRoute(builder: (context) {
                //             return const WelcomeScreen();
                //           }));
                //         },
                //         child: const Text(
                //           'Done',
                //           style: TextStyle(fontWeight: FontWeight.bold),
                //         ))
                //     : GestureDetector(
                //         onTap: () {
                //           _controller.nextPage(
                //               duration: const Duration(milliseconds: 500),
                //               curve: Curves.easeIn);
                //         },
                //         child: const Text(
                //           'Next',
                //           style: TextStyle(fontWeight: FontWeight.bold),
                //         )),
              ],
            ))
      ],
    ));
  }
}
