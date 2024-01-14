import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jatisejahtera/config/colors.dart';

class PerumahanScreen extends StatelessWidget {
  const PerumahanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'assets/image/banner_perumahan.png',
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
                      'Perumahan',
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
              height: 525,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/image/background_bottom.png',
                      ),
                      alignment: Alignment.bottomCenter)),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.0),
                    Text(
                      'Yayasan mengelola dana program pemilikan rumah bagi karyawan Perum Perhutani yang masih aktif khususnya Karyawan Golongan I dan Golongan II. Penyaluran dana bantuan pemilikan rumah ini diberikan secara selektif di seluruh Wilayah kerja Perum Perhutani yaitu di Jawa Timur, Jawa Tengah, serta Jawa Barat dan Banten. Bantuan ini diberikan secara regular setiap dua tahun, dan diberikan dalam bentuk pinjaman tanpa bunga yang pengembaliannya akan diangsur oleh karyawan dalam waktu lima tahun. Pada saat Karyawan memasuki masa pensiun, atau meninggal sebelum waktu pensiun, akan menerima pengembalian iuran Perumahan yang nilai nya sebesar seluruh akumulasi iuran pemilikan rumah yang telah disetorkan kepada yayasan.',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
