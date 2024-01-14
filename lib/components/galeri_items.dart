import 'package:flutter/material.dart';

class GaleriItems extends StatelessWidget {
  const GaleriItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          clipBehavior: Clip.hardEdge,
          elevation: 4,
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(
                  color: Colors.grey, width: 1, style: BorderStyle.solid)),
          child: SizedBox(
            width: 155,
            height: 155,
            child: Image.asset(
              'assets/image/galeri_1.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            width: 155,
            child: Text(
              'Pemberian Bantuan Pendidikan kepada 179 siswa putra...',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 10),
            ),
          ),
        )
      ],
    );
  }
}
