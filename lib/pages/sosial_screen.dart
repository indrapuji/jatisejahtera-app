import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jatisejahtera/components/content_items.dart';
import 'package:jatisejahtera/config/colors.dart';

class SosialScreen extends StatelessWidget {
  SosialScreen({super.key});

  final List<Map<String, dynamic>> myList = [
    {
      'no': 1,
      'desc':
          'Memberikan santunan kematian bagi pegawai dan pensiunan Perum Perhutani.'
    },
    {'no': 2, 'desc': 'Mengelola Panti Asuhan Rimba Bakti di Semarang.'},
    {
      'no': 3,
      'desc':
          'Memberikan santunan Nilai Hidup bagi pensiunan yang tidak pernah mengajukan klaim Bantuan Kesehatan selama masa perlindungan.'
    },
    {
      'no': 4,
      'desc':
          'Mengelola serta mengembangkan dana kesehatan dan dana perumahan yang diperoleh dari Perum Perhutani.'
    },
    {
      'no': 5,
      'desc':
          'Menjalankan usaha-usaha lain yang dianggap perlu dan bermanfaat sepanjang sesuai dengan maksud dan tujuan yayasan serta sesuai dengan peraturan dan perundangan yang berlaku.'
    },
    {'no': 6, 'desc': 'Memberi bantuan kepada korban bencana alam.'},
    {
      'no': 7,
      'desc':
          'Memberi bantuan kepada tuna wisma, fakir miskin, dan yatim piatu.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarIconBrightness:
                    Brightness.dark, //<-- For Android SEE HERE (dark icons)
                statusBarBrightness:
                    Brightness.dark, //<-- For iOS SEE HERE (dark icons)
              ),
              expandedHeight: 250.0,
              backgroundColor: Colors.white,
              elevation: 0.0,
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
                  'assets/image/banner_sosial.png',
                  fit: BoxFit.cover,
                ),
                stretchModes: const [
                  StretchMode.blurBackground,
                  StretchMode.zoomBackground,
                ],
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(0.0),
                child: Container(
                  height: 60.0,
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
                        'Sosial',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
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
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16.0),
                      const Text(
                        'Beberapa kegiatan dibidang Sosial dan Kemanusiaan yang diselenggarakan oleh Yayasan diantaranya',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16.0),
                      ...List.generate(myList.length, (index) {
                        return ContentItem(
                            numberText: (index + 1).toString(),
                            descText: myList[index]['desc']);
                      }),
                      const SizedBox(height: 32.0),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
