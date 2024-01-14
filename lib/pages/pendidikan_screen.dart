import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jatisejahtera/components/content_items.dart';
import 'package:jatisejahtera/config/colors.dart';

class PendidikanScreen extends StatelessWidget {
  PendidikanScreen({super.key});
  final List<Map<String, dynamic>> myList = [
    {
      'no': 1,
      'desc':
          'Memberikan bantuan pendidikan kepada putra/putri karyawan dan pensiunan Perum Perhutani yang berprestasi.'
    },
    {
      'no': 2,
      'desc':
          'Mengelola Wisma Putra Rimba untuk membantu menyediakan tempat tinggal bagi putra/putri karyawan/pensiunan Perum Perhutani yang melanjutkan pendidikan di Surabaya.'
    },
    {
      'no': 3,
      'desc':
          'Membantu pengembangan dan pembinaan lembaga Pendidikan dilingkup Perum Perhutani.'
    },
    {'no': 4, 'desc': 'Menyelenggarakan Pendidikan Non-formal (TK/TPA/PAUD)'},
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarIconBrightness:
                    Brightness.dark, //<-- For Android SEE HERE (dark icons)
                statusBarBrightness:
                    Brightness.dark, //<-- For iOS SEE HERE (dark icons)
              ),
              expandedHeight: 300.0,
              backgroundColor: Colors.white,
              // elevation: 0.0,
              stretch: true,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 35,
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/image/banner_pendidikan.png',
                  fit: BoxFit.cover,
                ),
                stretchModes: const [
                  StretchMode.blurBackground,
                  StretchMode.zoomBackground,
                ],
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(54.0),
                child: Container(
                  height: 110.0,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 5),
                      Container(
                        width: 40.0,
                        height: 5.0,
                        decoration: BoxDecoration(
                          color: outlineColor,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Pendidikan',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TabBar(
                        tabs: <Widget>[
                          Tab(text: "Kegiatan"),
                          Tab(text: "Bantuan"),
                          Tab(text: "Manfaat"),
                        ],
                        indicatorColor: primaryColor,
                        unselectedLabelColor: Colors.grey,
                        labelColor: primaryColor,
                        indicatorWeight: 3,
                        indicatorSize: TabBarIndicatorSize.tab,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/image/background_bottom.png',
                        ),
                        alignment: Alignment.bottomCenter)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: SizedBox(
                    height: 410,
                    child: TabBarView(children: [
                      Column(
                        children: [
                          const Text(
                            'Beberapa kegiatan dibidang pendidikan yang diselenggarakan oleh Yayasan di antaranya:',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16.0),
                          ...List.generate(myList.length, (index) {
                            return ContentItem(
                                numberText: (index + 1).toString(),
                                descText: myList[index]['desc']);
                          }),
                        ],
                      ),
                      const Column(
                        children: [
                          Text(
                            'Peruntukan',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 16.0),
                          Text(
                            'Putra/Putri Siswa/Mahasiswa dari Pensiunan atau Janda Pensiunan Karyawan Perum Perhutani Karyawan, Golongan A dan Golongan I, Golongan II yang tidak menjabat. Guru Sekolah Taruna Rimba yang sedang menempuh S1 bidang pendidikan.',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'Bantuan Pendidikan dengan nilai',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Card(
                                    surfaceTintColor: Colors.white,
                                    clipBehavior: Clip.hardEdge,
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        side: const BorderSide(
                                            color: Colors.grey,
                                            width: 1,
                                            style: BorderStyle.solid)),
                                    child: SizedBox(
                                      width:
                                          ((MediaQuery.of(context).size.width) -
                                                  48) /
                                              2,
                                      height: 70,
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Tingkat SD",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            Text(
                                              "Rp 50.000,-/bln",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Card(
                                    surfaceTintColor: Colors.white,
                                    clipBehavior: Clip.hardEdge,
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        side: const BorderSide(
                                            color: Colors.grey,
                                            width: 1,
                                            style: BorderStyle.solid)),
                                    child: SizedBox(
                                      width:
                                          ((MediaQuery.of(context).size.width) -
                                                  48) /
                                              2,
                                      height: 70,
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Tingkat SLTP",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            Text(
                                              "Rp 60.000,-/bln",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Card(
                                    surfaceTintColor: Colors.white,
                                    clipBehavior: Clip.hardEdge,
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        side: const BorderSide(
                                            color: Colors.grey,
                                            width: 1,
                                            style: BorderStyle.solid)),
                                    child: SizedBox(
                                      width:
                                          ((MediaQuery.of(context).size.width) -
                                                  48) /
                                              2,
                                      height: 70,
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Tingkat SLTA",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            Text(
                                              "Rp 75.000,-/bln",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Card(
                                    surfaceTintColor: Colors.white,
                                    clipBehavior: Clip.hardEdge,
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        side: const BorderSide(
                                            color: Colors.grey,
                                            width: 1,
                                            style: BorderStyle.solid)),
                                    child: SizedBox(
                                      width:
                                          ((MediaQuery.of(context).size.width) -
                                                  48) /
                                              2,
                                      height: 70,
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Perguruan Tinggi",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                            Text(
                                              "Rp 100.000,-/bln",
                                              style: TextStyle(fontSize: 15),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
