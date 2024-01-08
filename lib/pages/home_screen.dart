import 'package:flutter/material.dart';
import 'package:jatisejahtera/components/header_carousel.dart';

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
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/icon/pendidikan.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    color:
                                        const Color.fromARGB(255, 244, 68, 54),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "Pendidikan",
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image:
                                          AssetImage('assets/icon/sosial.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    color:
                                        const Color.fromARGB(255, 123, 32, 162),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "Sosial",
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/icon/perumahan.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    color:
                                        const Color.fromARGB(255, 16, 165, 233),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "Perumahan",
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/icon/kesehatan.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    color: const Color.fromARGB(
                                        255, 102, 187, 107),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "Kesehatan",
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      height: 400,
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
