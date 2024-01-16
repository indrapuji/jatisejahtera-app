import "package:flutter/material.dart";

class StaticButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color colorText;
  final void Function()? onTap;

  const StaticButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.colorText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                  color:
                      colorText == Colors.white ? backgroundColor : colorText)),
          padding: const EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: TextStyle(color: colorText, fontSize: 15),
              ),
              const SizedBox(
                width: 10,
              ),
            ],
          )),
    );
  }
}
