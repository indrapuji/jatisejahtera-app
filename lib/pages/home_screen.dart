import 'package:flutter/material.dart';
import 'package:jatisejahtera/components/header_carousel.dart';
import 'package:jatisejahtera/components/icon_program.dart';
import 'package:jatisejahtera/components/status_banner.dart';
import 'package:jatisejahtera/config/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: CustomScrollView(
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
                    const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconProgram(
                              imageIcon: 'assets/icon/pendidikan.png',
                              colorIcon: Color.fromARGB(255, 244, 68, 54),
                              textIcon: "Pendidikan"),
                          IconProgram(
                              imageIcon: 'assets/icon/sosial.png',
                              colorIcon: Color.fromARGB(255, 123, 32, 162),
                              textIcon: 'Sosial'),
                          IconProgram(
                              imageIcon: 'assets/icon/perumahan.png',
                              colorIcon: Color.fromARGB(255, 16, 165, 233),
                              textIcon: 'Perumahan'),
                          IconProgram(
                              imageIcon: 'assets/icon/kesehatan.png',
                              colorIcon: Color.fromARGB(255, 102, 187, 107),
                              textIcon: 'Kesehatan'),
                        ],
                      ),
                    ),
                    const StatusBanner(
                      backgroundColor: Color.fromARGB(255, 208, 233, 232),
                      descText:
                          'Daftarkan dirimu untuk mendapatkan manfaat lebih!',
                      buttonColor: primaryColor,
                      buttonText: 'Daftar',
                      buttonTextColor: Colors.white,
                    ),
                    Container(
                      color: Colors.red,
                      height: 400,
                    ),
                    Container(
                      color: Colors.brown,
                      height: 400,
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
