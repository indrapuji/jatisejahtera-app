import 'package:flutter/material.dart';
import 'package:jatisejahtera/config/colors.dart';
import 'package:jatisejahtera/components/static_button.dart';
import 'package:jatisejahtera/pages/home_screen.dart';

class SuccessScreen extends StatelessWidget {
  final String imageLogo;
  final String titleText;
  final String descText;
  const SuccessScreen(
      {super.key,
      required this.imageLogo,
      required this.titleText,
      required this.descText});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              opacity: 0.5,
              image: AssetImage(
                'assets/image/background_jati.png',
              ),
              alignment: Alignment.topCenter)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Image.asset(
                        imageLogo,
                        height: 250,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const SizedBox(height: 38),
                                Text(
                                  titleText,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: primaryColor),
                                ),
                                const SizedBox(height: 13),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25),
                                  child: Text(
                                    descText,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: primaryColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 12),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: StaticButton(
                        text: 'Selesai',
                        backgroundColor: primaryColor,
                        colorText: Colors.white,
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return HomeScreen();
                          }));
                        }))
              ],
            ),
          )),
    );
  }
}
