import 'package:flutter/material.dart';
import 'package:jatisejahtera/pages/content_screen.dart';

class GalleryScreen extends StatelessWidget {
  GalleryScreen({super.key});

  final List<Map<String, dynamic>> _galeriList = [
    {
      "id": 65,
      "title": "Pemberian Bantuan Pendidikan ",
      "subtitle": "",
      "desc":
          "Pemberian Bantuan Pendidikan kepada 179 siswa putra putri karyawan aktif dan pensiunan di lingkup Wil.kerja Divisi Regional jawa Tengah",
      "image_url":
          "https://jati.pasangbajaringan.id/uploads/1687794627230.jpeg",
      "category": "galeri",
      "status": true,
      "createdAt": "2023-06-26T15:50:27.238Z",
      "updatedAt": "2023-06-26T15:50:27.238Z"
    },
    {
      "id": 49,
      "title": "Penyerahan Bantuan Pendidikan",
      "subtitle": "",
      "desc":
          "Penyerahan bantuan Pendidikan di lingkup wil.kwrja Divisi RegionalJawa Barat",
      "image_url":
          "https://jati.pasangbajaringan.id/uploads/1687490104408.jpeg",
      "category": "galeri",
      "status": true,
      "createdAt": "2023-06-23T03:15:04.422Z",
      "updatedAt": "2023-06-23T03:15:04.422Z"
    },
    {
      "id": 43,
      "title": "Penyerahan BAntuan Pendidikan di Jawa Tengah",
      "subtitle": "",
      "desc":
          "Pemberian Bantuan Pendidikan kepada 179 siswa putra putri karyawan aktif dan pensiunan di lingkup Wil. kerja Divisi Regional Jawa Tengah",
      "image_url":
          "https://jati.pasangbajaringan.id/uploads/1687419519660.jpeg",
      "category": "galeri",
      "status": true,
      "createdAt": "2023-06-22T07:38:39.668Z",
      "updatedAt": "2023-06-22T07:38:39.668Z"
    },
    {
      "id": 42,
      "title": "Pwnyerahan Bantuan Pendidikan",
      "subtitle": "",
      "desc":
          "Pemberian Bantuan Pendidikan kepada 187 siswa putra putri karyawan aktif dan pensiunan di lingkup Wil. Divisi regional Jawa Timur",
      "image_url":
          "https://jati.pasangbajaringan.id/uploads/1687419335935.jpeg",
      "category": "galeri",
      "status": true,
      "createdAt": "2023-06-22T07:35:35.943Z",
      "updatedAt": "2023-06-22T07:35:35.943Z"
    },
    {
      "id": 16,
      "title": "Bantuan Untuk Panti asuhan",
      "subtitle": "",
      "desc":
          "Yayasan Jatisejahtera memberikan bantuan untuk Panti Asuhan Rimba Bakti",
      "image_url":
          "https://jati.pasangbajaringan.id/uploads/1683875823819.jpeg",
      "category": "galeri",
      "status": true,
      "createdAt": "2023-05-12T07:17:03.827Z",
      "updatedAt": "2023-05-12T07:17:03.827Z"
    }
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
                        imagesContent: _galeriList[index]['image_url'],
                        titleContent: _galeriList[index]['title'],
                        descContent: _galeriList[index]['desc']);
                  }));
                },
                child: Image.network(_galeriList[index]['image_url'],
                    fit: BoxFit.cover),
              );
            })
          ],
        ),
      ),
    );
  }
}
