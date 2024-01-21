import 'package:flutter/material.dart';

class BackHeader extends StatelessWidget {
  final String? headerTitle;
  const BackHeader({super.key, this.headerTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 35,
            ),
          ),
          const SizedBox(width: 10),
          headerTitle != null
              ? Text(
                  headerTitle!,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                )
              : Container()
        ],
      ),
    );
  }
}
