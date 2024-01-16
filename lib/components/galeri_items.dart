import 'package:flutter/material.dart';

class GaleriItems extends StatelessWidget {
  final String imagesContent;
  final String titleContent;
  final int itemIndex;
  final int itemLength;
  final void Function() onTap;

  const GaleriItems(
      {super.key,
      required this.imagesContent,
      required this.titleContent,
      required this.itemIndex,
      required this.itemLength,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
            left: itemIndex == 0 ? 12 : 4,
            top: 8,
            bottom: 16,
            right: itemLength == (itemIndex + 1) ? 12 : 0),
        child: Column(
          children: [
            Card(
              clipBehavior: Clip.hardEdge,
              elevation: 4,
              shadowColor: const Color.fromARGB(255, 183, 132, 132),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                  side: const BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              child: SizedBox(
                width: 155,
                height: 155,
                child: Image.asset(
                  imagesContent,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 155,
                child: Text(
                  titleContent,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
