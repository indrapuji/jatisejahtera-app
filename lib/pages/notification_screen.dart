import 'package:flutter/material.dart';
import 'package:jatisejahtera/components/empty_image.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'NOTIFIKASI',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            size: 25,
          ),
        ),
      ),
      body: const EmptyImage(
        imageContent: 'assets/image/empty.png',
        textTitle: 'Oops! Tidak ada info terbaru',
      ),
    );
  }
}
