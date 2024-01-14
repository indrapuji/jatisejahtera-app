import 'package:flutter/material.dart';

class IconProgram extends StatelessWidget {
  final String imageIcon;
  final Color colorIcon;
  final String textIcon;
  final void Function() onTap;
  const IconProgram(
      {super.key,
      required this.imageIcon,
      required this.colorIcon,
      required this.textIcon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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
      ),
    );
  }
}
