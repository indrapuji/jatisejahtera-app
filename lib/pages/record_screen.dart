import 'package:flutter/material.dart';
import 'package:jatisejahtera/config/colors.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({super.key});

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
              fit: BoxFit.contain,
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
                        'assets/image/empty.png',
                        height: 250,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                SizedBox(height: 38),
                                Text(
                                  'Oops! Sepertinya masih kosong',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: primaryColor),
                                ),
                                SizedBox(height: 13),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 25),
                                  child: Text(
                                    'Yuk ajukan klaim pertama mu',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: primaryColor,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 12),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
