import 'package:flutter/material.dart';
import 'package:jatisejahtera/components/berita_items.dart';
import 'package:jatisejahtera/components/galeri_items.dart';
import 'package:jatisejahtera/components/header_carousel.dart';
import 'package:jatisejahtera/components/icon_program.dart';
import 'package:jatisejahtera/components/claims.dart';
import 'package:jatisejahtera/components/realisasi.dart';
import 'package:jatisejahtera/components/status_banner.dart';
import 'package:jatisejahtera/config/colors.dart';
import 'package:jatisejahtera/models/content_model.dart';
import 'package:jatisejahtera/pages/content_screen.dart';
import 'package:jatisejahtera/pages/notification_screen.dart';
import 'package:jatisejahtera/pages/signup_screen.dart';
import 'package:jatisejahtera/services/content_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> _programList = [
    {
      'imageIcon': 'assets/icon/pendidikan.png',
      'colorIcon': const Color.fromARGB(255, 244, 68, 54),
      'textIcon': "Pendidikan",
      'navTo': '/program/pendidikan'
    },
    {
      'imageIcon': 'assets/icon/sosial.png',
      'colorIcon': const Color.fromARGB(255, 123, 48, 162),
      'textIcon': "Sosial",
      'navTo': '/program/sosial'
    },
    {
      'imageIcon': 'assets/icon/perumahan.png',
      'colorIcon': const Color.fromARGB(255, 16, 165, 233),
      'textIcon': "Perumahan",
      'navTo': '/program/perumahan'
    },
    {
      'imageIcon': 'assets/icon/kesehatan.png',
      'colorIcon': const Color.fromARGB(255, 102, 187, 107),
      'textIcon': "Kesehatan",
      'navTo': '/program/kesehatan'
    },
  ];

  List<Content> listNews = [];
  List<Content> listGaleri = [];
  bool isNewsLoading = true;
  bool isGaleriLoading = true;

  ContentService contentService = ContentService();

  fetchNews() async {
    listNews = await contentService.fetchNews();
    setState(() {});
    isNewsLoading = false;
  }

  fetchGaleri() async {
    listGaleri = await contentService.fetchGaleri();
    setState(() {});
    isGaleriLoading = false;
  }

  @override
  void initState() {
    fetchNews();
    fetchGaleri();
    super.initState();
  }

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
                                Navigator.pushNamed(
                                    context, _programList[index]['navTo']);
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
                    isNewsLoading
                        ? const Center(
                            child: LinearProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(primaryColor),
                            ),
                          )
                        : Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 8, left: 16, right: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text('Berita',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontSize: 18)),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(context, '/news');
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
                                        final newsIndex = listNews[index];
                                        return BeritaItems(
                                          imagesContent: newsIndex.imageUrl,
                                          titleContent: newsIndex.title,
                                          itemIndex: index,
                                          itemLength: 4,
                                          onTap: () {
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return ContentScreen(
                                                  imagesContent:
                                                      newsIndex.imageUrl,
                                                  titleContent: newsIndex.title,
                                                  descContent: newsIndex.desc);
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
                    isGaleriLoading
                        ? const Center(
                            child: LinearProgressIndicator(
                              valueColor: AlwaysStoppedAnimation(primaryColor),
                            ),
                          )
                        : Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    top: 8, left: 16, right: 16),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                        Navigator.pushNamed(context, '/galeri');
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
                                      final galeriIndex = listGaleri[index];
                                      return GaleriItems(
                                        imagesContent: galeriIndex.imageUrl,
                                        titleContent: galeriIndex.title,
                                        itemIndex: index,
                                        itemLength: 4,
                                        onTap: () {
                                          Navigator.push(context,
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return ContentScreen(
                                                imagesContent:
                                                    galeriIndex.imageUrl,
                                                titleContent: galeriIndex.title,
                                                descContent: galeriIndex.desc);
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
