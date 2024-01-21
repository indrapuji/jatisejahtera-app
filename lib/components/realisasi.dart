import 'package:flutter/material.dart';
import 'package:jatisejahtera/config/colors.dart';
import 'package:jatisejahtera/pages/realisasi_screen.dart';

class Realisasi extends StatelessWidget {
  Realisasi({super.key});

  final List<Map<String, dynamic>> myList = [
    {'images': 'assets/image/pendidikan.png', 'title': 'Pendidikan'},
    {'images': 'assets/image/perumahan.png', 'title': 'Perumahan'},
    {'images': 'assets/image/kesehatan.png', 'title': 'Kesehatan'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: const Text('Data Realisasi',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
          ),
          const SizedBox(height: 8),
          ...List.generate(myList.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RealisasiScreen(
                    titleText: myList[index]['title'],
                  );
                }));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Container(
                  height: 90,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: outlineColor),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          myList[index]['images'],
                          height: 60,
                        ),
                        Text(
                          myList[index]['title'],
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
