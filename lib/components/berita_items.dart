import 'package:flutter/material.dart';

class BeritaItems extends StatelessWidget {
  final String imagesContent;
  final String titleText;
  const BeritaItems(
      {super.key, required this.imagesContent, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
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
                child: Image.asset(
                  imagesContent,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  titleText,
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
    );
  }
}
