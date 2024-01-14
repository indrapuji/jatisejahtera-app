import 'package:flutter/material.dart';
import 'package:jatisejahtera/config/colors.dart';

class ContentItem extends StatelessWidget {
  final String numberText;
  final String descText;
  final bool? isCircle;
  const ContentItem(
      {super.key,
      required this.numberText,
      required this.descText,
      this.isCircle = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 24.0,
          width: 24.0,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(right: 16.0),
          decoration: isCircle == true
              ? const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kMainTextColor,
                )
              : null,
          child: isCircle == true
              ? Text(
                  numberText,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.w700),
                )
              : Text(
                  numberText,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                Text(
                  descText,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
