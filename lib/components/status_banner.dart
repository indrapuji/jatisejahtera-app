import 'package:flutter/material.dart';
import 'package:jatisejahtera/components/static_button.dart';
import 'package:jatisejahtera/config/colors.dart';

class StatusBanner extends StatelessWidget {
  final Color backgroundColor;
  final Color buttonColor;
  final Color buttonTextColor;
  final String descText;
  final String buttonText;
  final void Function()? onTap;
  const StatusBanner(
      {super.key,
      required this.backgroundColor,
      required this.descText,
      required this.buttonColor,
      required this.buttonText,
      required this.buttonTextColor,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 18),
      height: 175,
      width: (MediaQuery.of(context).size.width),
      decoration: BoxDecoration(
          color: backgroundColor,
          image: const DecorationImage(
              image: AssetImage(
                'assets/image/background_banner.png',
              ),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topLeft)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 250,
            child: Text(
              descText,
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xff7B8080)),
            ),
          ),
          SizedBox(
            width: 150,
            child: StaticButton(
                text: buttonText,
                backgroundColor: primaryColor,
                colorText: Colors.white,
                onTap: onTap),
          )
        ],
      ),
    );
  }
}
