import 'package:flutter/material.dart';
import 'package:jatisejahtera/pages/content_screen.dart';

class GalleryScreen extends StatelessWidget {
  GalleryScreen({super.key});

  final List<Map<String, dynamic>> _galeriList = [
    {
      'images': 'assets/image/galeri_1.jpeg',
      'title': 'Pemberian Bantuan Pendidikan ',
      'desc':
          'Pemberian Bantuan Pendidikan kepada 179 siswa putra putri karyawan aktif dan pensiunan di lingkup Wil.kerja Divisi Regional jawa Tengah'
    },
    {
      'images': 'assets/image/galeri_2.jpeg',
      'title': 'Penyerahan Bantuan Pendidikan',
      'desc':
          'Penyerahan bantuan Pendidikan di lingkup wil.kwrja Divisi RegionalJawa Barat'
    },
    {
      'images': 'assets/image/galeri_3.jpeg',
      'title': 'Penyerahan Bantuan Pendidikan di Jawa Tengah',
      'desc':
          'Pemberian Bantuan Pendidikan kepada 179 siswa putra putri karyawan aktif dan pensiunan di lingkup Wil. kerja Divisi Regional Jawa Tengah'
    },
    {
      'images': 'assets/image/galeri_4.jpeg',
      'title': 'Penyerahan Bantuan Pendidikan',
      'desc':
          'Pemberian Bantuan Pendidikan kepada 187 siswa putra putri karyawan aktif dan pensiunan di lingkup Wil. Divisi regional Jawa Timur'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Galeri',
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
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GridView.count(
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          crossAxisCount: 3,
          children: <Widget>[
            ...List.generate(_galeriList.length, (index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ContentScreen(
                        imagesContent: _galeriList[index]['images'],
                        titleContent: _galeriList[index]['title'],
                        descContent: _galeriList[index]['desc']);
                  }));
                },
                child: Image.asset(_galeriList[index]['images'],
                    fit: BoxFit.cover),
              );
            })
          ],
        ),
      ),
    );
  }
}
