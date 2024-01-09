import 'package:flutter/material.dart';

class IconProgram extends StatelessWidget {
  final String imageIcon;
  final Color colorIcon;
  final String textIcon;
  const IconProgram(
      {super.key,
      required this.imageIcon,
      required this.colorIcon,
      required this.textIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imageIcon),
                fit: BoxFit.cover,
              ),
              color: colorIcon,
              borderRadius: BorderRadius.circular(10)),
        ),
        const SizedBox(height: 5),
        Text(
          textIcon,
          style: const TextStyle(fontSize: 9, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
