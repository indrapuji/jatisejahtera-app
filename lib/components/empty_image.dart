import 'package:flutter/material.dart';
import 'package:jatisejahtera/config/colors.dart';

class EmptyImage extends StatelessWidget {
  final String imageContent;
  final String textTitle;
  final String? textSub;
  const EmptyImage(
      {super.key,
      required this.imageContent,
      required this.textTitle,
      this.textSub});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                imageContent,
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
                          textTitle,
                          style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: primaryColor),
                        ),
                        const SizedBox(height: 13),
                        textSub != null
                            ? Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Text(
                                  textSub!,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 13,
                                    color: primaryColor,
                                  ),
                                ),
                              )
                            : Container(),
                        const SizedBox(height: 12),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// 'assets/image/empty.png'
// 'Oops! Sepertinya masih kosong',
// 'Yuk ajukan klaim pertama mu'

