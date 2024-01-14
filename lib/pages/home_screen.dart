import 'package:flutter/material.dart';
import 'package:jatisejahtera/components/berita_items.dart';
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
            slivers: <Widget>[
              SliverAppBar(
                // backgroundColor: Colors.white,
                // floating: true,
                // snap: true,
                // pinned: true,
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
                          IconProgram(
                            imageIcon: 'assets/icon/pendidikan.png',
                            colorIcon: const Color.fromARGB(255, 244, 68, 54),
                            textIcon: "Pendidikan",
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return PendidikanScreen();
                              }));
                            },
                          ),
                          IconProgram(
                            imageIcon: 'assets/icon/sosial.png',
                            colorIcon: const Color.fromARGB(255, 123, 48, 162),
                            textIcon: 'Sosial',
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SosialScreen();
                              }));
                            },
                          ),
                          IconProgram(
                            imageIcon: 'assets/icon/perumahan.png',
                            colorIcon: const Color.fromARGB(255, 16, 165, 233),
                            textIcon: 'Perumahan',
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const PerumahanScreen();
                              }));
                            },
                          ),
                          IconProgram(
                            imageIcon: 'assets/icon/kesehatan.png',
                            colorIcon: const Color.fromARGB(255, 102, 187, 107),
                            textIcon: 'Kesehatan',
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return KesehatanScreen();
                              }));
                            },
                          ),
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
                        Column(
                          children: [
                            SizedBox(
                                height: 170,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 4,
                                    itemBuilder: (context, index) {
                                      return BeritaItems(
                                          imagesContent: _beritaList[index]
                                              ['images'],
                                          titleText: _beritaList[index]
                                              ['title']);
                                    })),
                          ],
                        ),
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
                    Container(
                      color: Colors.red,
                      height: 400,
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
