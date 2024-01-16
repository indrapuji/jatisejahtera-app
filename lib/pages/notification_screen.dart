import 'package:flutter/material.dart';
import 'package:jatisejahtera/config/colors.dart';

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Image.asset(
                  'assets/image/empty.png',
                  height: 250,
                ),
                const SizedBox(height: 38),
                const Text(
                  'Oops! Tidak ada info terbaru',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: primaryColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
