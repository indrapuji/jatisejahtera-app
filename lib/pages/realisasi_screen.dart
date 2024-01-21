import 'package:flutter/material.dart';

class RealisasiScreen extends StatelessWidget {
  final String titleText;

  const RealisasiScreen({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(
        titleText.toUpperCase(),
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back,
          size: 25,
        ),
      ),
    ));
  }
}
