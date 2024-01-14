import 'package:flutter/material.dart';
import 'package:jatisejahtera/components/berita_items.dart';
// import 'package:jatisejahtera/components/galeri_items.dart';
import 'package:jatisejahtera/components/header_carousel.dart';
import 'package:jatisejahtera/components/icon_program.dart';
import 'package:jatisejahtera/components/claims.dart';
import 'package:jatisejahtera/components/realisasi.dart';
import 'package:jatisejahtera/components/status_banner.dart';
import 'package:jatisejahtera/config/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jatisejahtera/pages/kesehatan_screen.dart';
import 'package:jatisejahtera/pages/pendidikan_screen.dart';
import 'package:jatisejahtera/pages/perumahan_screen.dart';
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
      'images': 'assets/image/berita_1.jpeg',
      'title':
          'Sosialisasi Program yayasan Kesejahteraan Pegawai Perum Perhutani (YKP3JS)'
    },
    {
      'images': 'assets/image/berita_2.jpeg',
      'title':
          'Penyerahan bantuan Pendidikan di Lingkup Wil.kerja Divisi Regional Jawa Timur'
    },
    {
      'images': 'assets/image/berita_3.jpeg',
      'title':
          'Penyerahan Bantuan Pendidikan di Lingkup Wil.kerja Divisi Regional Jawa Barat'
    },
    {
      'images': 'assets/image/berita_4.jpeg',
      'title': 'Malam Keakraban Kangen Perhutani 2'
    },
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
                expandedHeight: 140,
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
                    const StatusBanner(
                      backgroundColor: Color.fromARGB(255, 208, 233, 248),
                      descText:
                          'Daftarkan dirimu untuk mendapatkan manfaat lebih!',
                      buttonColor: primaryColor,
                      buttonText: 'Daftar',
                      buttonTextColor: Colors.white,
                    ),
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 8, left: 16, right: 16),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Berita',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18)),
                              Text(
                                'Lihat semua',
                                style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold),
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
                                    imagesContent: _beritaList[index]['images'],
                                    titleText: _beritaList[index]['title'],
                                    itemIndex: index,
                                    itemLength: 4,
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Galeri',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 18)),
                              Text(
                                'Lihat semua',
                                style: TextStyle(
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Card(
                              clipBehavior: Clip.hardEdge,
                              elevation: 4,
                              shadowColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: const BorderSide(
                                      color: Colors.grey,
                                      width: 1,
                                      style: BorderStyle.solid)),
                              child: SizedBox(
                                width: 155,
                                height: 155,
                                child: Image.asset(
                                  'assets/image/galeri_1.jpeg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: SizedBox(
                                width: 155,
                                child: Text(
                                  'Pemberian Bantuan Pendidikan kepada 179 siswa putra...',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                // ignore: deprecated_member_use
                icon: FaIcon(FontAwesomeIcons.home, size: 20),
                label: 'HOME',
                // activeIcon:  ,
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.history_outlined,
                ),
                label: 'RECORD',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: 'USER',
              ),
            ],
            selectedItemColor: primaryColor,
            selectedFontSize: 12,
          ),
        ));
  }
}
