import 'package:flutter/material.dart';

class BeritaItems extends StatelessWidget {
  final String imagesContent;
  final String titleContent;
  final int itemIndex;
  final int itemLength;
  final void Function() onTap;
  const BeritaItems(
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
            left: itemIndex == 0 ? 12 : 8,
            top: 8,
            bottom: 16,
            right: itemLength == (itemIndex + 1) ? 12 : 0),
        child: Card(
          clipBehavior: Clip.hardEdge,
          elevation: 4,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(
                  color: Colors.grey, width: 1, style: BorderStyle.solid)),
          child: SizedBox(
            width: 250,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 100,
                  width: 250,
                  child: Image.network(
                    imagesContent,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    titleContent,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                        fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
