import 'package:flutter/material.dart';
import 'package:jatisejahtera/components/berita.dart';
import 'package:jatisejahtera/pages/content_screen.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen({super.key});

  final List<Map<String, dynamic>> _beritaList = [
    {
      "id": 111,
      "title":
          "Sosialisasi Program yayasan Kesejahteraan Pegawai Perum Perhutani (YKP3JS)",
      "subtitle": "",
      "desc":
          "Pengurus Yayasan jati sejahtera (YKP3JS) mengadakan kegiatan Sosialisasi Program Yayasan Kesejahteraan Pegawai Perum Perhutani (YKP3JS) Jati Sejahtera Bagi Pensiunan dan Pegawai Aktif Perwakilan se Rayon V",
      "image_url":
          "https://jati.pasangbajaringan.id/uploads/1695196610367.jpeg",
      "category": "berita",
      "status": true,
      "createdAt": "2023-09-20T07:56:50.379Z",
      "updatedAt": "2023-09-20T07:56:50.379Z"
    },
    {
      "id": 107,
      "title":
          "Penyerahan bantuan Pendidikan di Lingkup Wil.kerja Divisi Regional Jawa Timur",
      "subtitle": "",
      "desc":
          "Pemberian Bantuan Pendidikan kepada 187siswa putra putri karyawan aktif dan pensiunan di lingkup Wil.kerja Divisi Regional Jawa TImur",
      "image_url":
          "https://jati.pasangbajaringan.id/uploads/1688628661756.jpeg",
      "category": "berita",
      "status": true,
      "createdAt": "2023-07-06T07:31:01.765Z",
      "updatedAt": "2023-07-06T07:31:01.765Z"
    },
    {
      "id": 106,
      "title":
          "Penyerahan Bantuan Pendidikan di Lingkup Wil.kerja Divisi Regional Jawa Barat",
      "subtitle": "",
      "desc":
          "Pemberian Bantuan Pendidikan kepada 175 siswa putra putri karyawan aktif dan pensiunan di lingkup kerja Divisi Regional Jawa Barat",
      "image_url":
          "https://jati.pasangbajaringan.id/uploads/1688628460294.jpeg",
      "category": "berita",
      "status": true,
      "createdAt": "2023-07-06T07:27:40.304Z",
      "updatedAt": "2023-07-06T07:27:40.304Z"
    },
    {
      "id": 105,
      "title": "Malam Keakraban Kangen Perhutani 2",
      "subtitle": "",
      "desc":
          "Pendiri Yayasan Drs. Damami Abrori Menghadiri pertemuan para Pensiunan Perhutani pada acara malam keakraban kangen Perhutani 2 di Bandung.",
      "image_url":
          "https://jati.pasangbajaringan.id/uploads/1688627810612.jpeg",
      "category": "berita",
      "status": true,
      "createdAt": "2023-07-06T07:16:50.620Z",
      "updatedAt": "2023-07-06T07:16:50.620Z"
    },
    {
      "id": 64,
      "title":
          "Penyerahan Bantuan Pendidikan di Lingkup Wil.Kerja Divisi Regional Jawa Tengah",
      "subtitle": "",
      "desc":
          "Pemberian Bantuan Pendidikan kepada 179 siswa putra putri karyawan aktif dan pensiunan di lingkup Wil.kerja Divisi Regional jawa Tengah",
      "image_url":
          "https://jati.pasangbajaringan.id/uploads/1687794414079.jpeg",
      "category": "berita",
      "status": true,
      "createdAt": "2023-06-26T15:46:54.091Z",
      "updatedAt": "2023-06-26T15:46:54.091Z"
    },
    {
      "id": 18,
      "title": "Yayasan Jati Sejahtera (YKP3JS) Silaturahmi Di Jawa Barat",
      "subtitle": "",
      "desc":
          "Pengurus Yayasan jati sejahtera (YKP3JS) mengadakan kegiatan Silaturahmi dan edukasi bersama perwakilan yayasan jati sejahtera di jawa barat",
      "image_url": "https://jati.pasangbajaringan.id/uploads/1684042008247.jpg",
      "category": "berita",
      "status": true,
      "createdAt": "2023-05-14T05:26:48.285Z",
      "updatedAt": "2023-05-14T05:26:48.285Z"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BERITA',
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
      body: ListView.builder(
          itemCount: _beritaList.length,
          itemBuilder: (context, index) {
            return Berita(
              contentImage: _beritaList[index]['image_url'],
              contentTitle: _beritaList[index]['title'],
              contentDesc: _beritaList[index]['desc'],
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ContentScreen(
                      imagesContent: _beritaList[index]['image_url'],
                      titleContent: _beritaList[index]['title'],
                      descContent: _beritaList[index]['desc']);
                }));
              },
            );
          }),
    );
  }
}
