import 'package:flutter/material.dart';
import 'package:jatisejahtera/components/berita_items.dart';
import 'package:jatisejahtera/components/galeri_items.dart';
import 'package:jatisejahtera/components/header_carousel.dart';
import 'package:jatisejahtera/components/icon_program.dart';
import 'package:jatisejahtera/components/claims.dart';
import 'package:jatisejahtera/components/realisasi.dart';
import 'package:jatisejahtera/components/status_banner.dart';
import 'package:jatisejahtera/config/colors.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jatisejahtera/pages/content_screen.dart';
import 'package:jatisejahtera/pages/gallery_screen.dart';
import 'package:jatisejahtera/pages/kesehatan_screen.dart';
import 'package:jatisejahtera/pages/news_screen.dart';
import 'package:jatisejahtera/pages/notification_screen.dart';
import 'package:jatisejahtera/pages/pendidikan_screen.dart';
import 'package:jatisejahtera/pages/perumahan_screen.dart';
import 'package:jatisejahtera/pages/signup_screen.dart';
import 'package:jatisejahtera/pages/sosial_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, dynamic>> _programList = [
    {
      'imageIcon': 'assets/icon/pendidikan.png',
      'colorIcon': const Color.fromARGB(255, 244, 68, 54),
      'textIcon': "Pendidikan",
      'navTo': PendidikanScreen()
    },
    {
      'imageIcon': 'assets/icon/sosial.png',
      'colorIcon': const Color.fromARGB(255, 123, 48, 162),
      'textIcon': "Sosial",
      'navTo': SosialScreen()
    },
    {
      'imageIcon': 'assets/icon/perumahan.png',
      'colorIcon': const Color.fromARGB(255, 16, 165, 233),
      'textIcon': "Perumahan",
      'navTo': const PerumahanScreen()
    },
    {
      'imageIcon': 'assets/icon/kesehatan.png',
      'colorIcon': const Color.fromARGB(255, 102, 187, 107),
      'textIcon': "Kesehatan",
      'navTo': KesehatanScreen()
    },
  ];

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
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: CustomScrollView(
            physics: const ClampingScrollPhysics(),
            slivers: <Widget>[
              SliverAppBar(
                // expandedHeight: 215,
                expandedHeight: MediaQuery.of(context).size.width - 200,
                flexibleSpace: const FlexibleSpaceBar(
                  background: HeaderCarousel(),
                ),
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(20),
                    child: Container(
                        height: 20,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))))),
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ...List.generate(_programList.length, (index) {
                            return IconProgram(
                              imageIcon: _programList[index]['imageIcon'],
                              colorIcon: _programList[index]['colorIcon'],
                              textIcon: _programList[index]['textIcon'],
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return _programList[index]['navTo'];
                                }));
                              },
                            );
                          }),
                        ],
                      ),
                    ),
                    StatusBanner(
                      backgroundColor: const Color.fromARGB(255, 208, 233, 248),
                      descText:
                          'Daftarkan dirimu untuk mendapatkan manfaat lebih!',
                      buttonColor: primaryColor,
                      buttonText: 'Daftar',
                      buttonTextColor: Colors.white,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const SignupScreen();
                        }));
                      },
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 8, left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Berita',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18)),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return NewsScreen();
                                  }));
                                },
                                child: const Text(
                                  'Lihat semua',
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                            height: 185,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return BeritaItems(
                                    imagesContent: _beritaList[index]
                                        ['image_url'],
                                    titleContent: _beritaList[index]['title'],
                                    itemIndex: index,
                                    itemLength: 4,
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return ContentScreen(
                                            imagesContent: _beritaList[index]
                                                ['image_url'],
                                            titleContent: _beritaList[index]
                                                ['title'],
                                            descContent: _beritaList[index]
                                                ['desc']);
                                      }));
                                    },
                                  );
                                })),
                      ],
                    ),
                    const Divider(
                      thickness: 10,
                      color: thirdColor,
                    ),
                    const Claims(),
                    const Divider(
                      thickness: 10,
                      color: thirdColor,
                    ),
                    Realisasi(),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 8, left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('Galeri',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18)),
                              GestureDetector(
                                child: const Text(
                                  'Lihat semua',
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return GalleryScreen();
                                  }));
                                },
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 235,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return GaleriItems(
                                  imagesContent: _galeriList[index]
                                      ['image_url'],
                                  titleContent: _galeriList[index]['title'],
                                  itemIndex: index,
                                  itemLength: 4,
                                  onTap: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return ContentScreen(
                                          imagesContent: _galeriList[index]
                                              ['image_url'],
                                          titleContent: _galeriList[index]
                                              ['title'],
                                          descContent: _galeriList[index]
                                              ['desc']);
                                    }));
                                  },
                                );
                              }),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NotificationScreen();
              }));
            },
            backgroundColor: Colors.transparent,
            elevation: 0,

            // child: const Icon(Icons.notifications),
            child: Stack(
              children: [
                const Icon(
                  Icons.notifications,
                  color: primaryColor,
                  size: 40,
                ),
                Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.topRight,
                  margin: const EdgeInsets.only(top: 3),
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                        border: Border.all(color: Colors.white, width: 2)),
                    child: const Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Center(
                        child: Text(
                          '3',
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
