import 'package:flutter/material.dart';
import 'package:jatisejahtera/config/colors.dart';

class Berita extends StatelessWidget {
  final String contentImage;
  final String contentTitle;
  final String contentDesc;
  final void Function() onTap;
  const Berita(
      {super.key,
      required this.contentImage,
      required this.contentTitle,
      required this.contentDesc,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Card(
                  clipBehavior: Clip.hardEdge,
                  elevation: 4,
                  shadowColor: const Color.fromARGB(255, 183, 132, 132),
                  child: SizedBox(
                    width: 150,
                    height: 120,
                    child: Image.network(
                      contentImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 190,
                        child: Text(
                          contentTitle,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: primaryColor),
                        ),
                      ),
                      const SizedBox(height: 4),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 190,
                        child: Text(
                          contentDesc,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 13, color: primaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(thickness: 1, color: outlineColor)
          ],
        ),
      ),
    );
  }
}
