import 'package:flutter/material.dart';
import 'package:jatisejahtera/components/berita.dart';

class NewsScreen extends StatelessWidget {
  NewsScreen({super.key});

  final List<Map<String, dynamic>> _beritaList = [
    {
      'images': 'assets/image/berita_1.jpeg',
      'title':
          'Sosialisasi Program yayasan Kesejahteraan Pegawai Perum Perhutani (YKP3JS)',
      'desc':
          'Pengurus Yayasan jati sejahtera (YKP3JS) mengadakan kegiatan Sosialisasi Program Yayasan Kesejahteraan Pegawai Perum Perhutani (YKP3JS) Jati Sejahtera Bagi Pensiunan dan Pegawai Aktif Perwakilan se Rayon V.'
    },
    {
      'images': 'assets/image/berita_2.jpeg',
      'title':
          'Penyerahan bantuan Pendidikan di Lingkup Wil.kerja Divisi Regional Jawa Timur',
      'desc':
          'Pemberian Bantuan Pendidikan kepada 187siswa putra putri karyawan aktif dan pensiunan di lingkup Wil.kerja Divisi Regional Jawa TImur.'
    },
    {
      'images': 'assets/image/berita_3.jpeg',
      'title':
          'Penyerahan Bantuan Pendidikan di Lingkup Wil.kerja Divisi Regional Jawa Barat',
      'desc':
          'Pemberian Bantuan Pendidikan kepada 175 siswa putra putri karyawan aktif dan pensiunan di lingkup kerja Divisi Regional Jawa Barat.'
    },
    {
      'images': 'assets/image/berita_4.jpeg',
      'title': 'Malam Keakraban Kangen Perhutani 2',
      'desc':
          'Pendiri Yayasan Drs. Damami Abrori Menghadiri pertemuan para Pensiunan Perhutani pada acara malam keakraban kangen Perhutani 2 di Bandung.'
    },
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
              contentImage: _beritaList[index]['images'],
              contentTitle: _beritaList[index]['title'],
              contentDesc: _beritaList[index]['desc'],
            );
          }),
    );
  }
}
