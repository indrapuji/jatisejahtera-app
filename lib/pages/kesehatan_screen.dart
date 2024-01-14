import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jatisejahtera/components/content_items.dart';
import 'package:jatisejahtera/config/colors.dart';

class KesehatanScreen extends StatelessWidget {
  KesehatanScreen({super.key});
  final List<Map<String, dynamic>> myList = [
    {
      'no': 1,
      'desc':
          'Penggantian biaya rawat inap dan atau pembedahan di RS dalam negeri.'
    },
    {'no': 2, 'desc': 'Operasi katarak atau operasi lain tanpa rawat inap.'},
    {'no': 3, 'desc': 'Perawatan di UGD / IGD.'},
  ];
  final List<Map<String, dynamic>> listManfaat = [
    {'no': 1, 'desc': 'Gol A, I dan II : Rp 5.000.000'},
    {'no': 2, 'desc': 'Gol III dan IV : Rp 8.000.000'},
    {
      'no': 3,
      'desc':
          'Berlaku bagi peserta yang habis masa pertanggungannya sejak 1 Januari 2021'
    },
  ];
  final List<Map<String, dynamic>> listSantunan = [
    {'no': 1, 'desc': 'Pegawai aktif : Rp 2.500.000'},
    {'no': 2, 'desc': 'Pensiunan : Rp 5.000.000'},
    {'no': 3, 'desc': 'Pasangan : Rp 2.500.000'},
  ];
  final List<Map<String, dynamic>> listMekanisme = [
    {
      'no': 1,
      'desc':
          'Penggantian biaya rawat inap diberikan dengan sistem Restitusi, besarnya nilai penggantian sesuai dengan ketentuan dalam tabel.'
    },
    {
      'no': 2,
      'desc':
          'Pengajuan penggantianbiaya rawat inap dapat dilakukan melalui Satuan Kerja Perum Perhutani terdekat, atau langsung diajukan ke Yayasan (YKP3JS), baik dengan mengirimkan berkas ke yayasan atau melalui fasilitas on-line di website yayasan.'
    },
    {
      'no': 3,
      'desc':
          'Kelengkapan dokumen dalam pengajuan penggantian biaya rawat inap.'
    },
  ];
  final List<Map<String, dynamic>> listMekanismeNext = [
    {
      'no': 1,
      'desc':
          'Batas waktu penundaan pengajuan adalah 3 (tiga) bulan terhitung sejak tanggal surat permohonan.'
    },
    {
      'no': 2,
      'desc':
          'Apabila peserta memiliki asuransi lain, yayasan memberi penggantian sebesar selisih biayanya dari yang telah diverifikasi oleh asuransi.'
    },
    {
      'no': 3,
      'desc':
          'Penggantian biaya kesehatan oleh yayasan selambat - lambatnya 14 hari kerja setelah berkas diterima dengan lengkap dan benar.'
    },
  ];
  final List<Map<String, dynamic>> listKelengkapan = [
    {
      'no': 1,
      'desc': 'Surat permohonan bantuan biaya rawat inap (form tersedia).'
    },
    {'no': 2, 'desc': 'Surat keterangan sakit dari dokter yang merawat.'},
    {'no': 3, 'desc': 'Kuitansi asli dari rumah sakit pensiunan dirawat.'},
    {'no': 4, 'desc': 'Fotocopy KTP.'},
    {'no': 5, 'desc': 'Fotocopy Kartu Peserta Yayasan.'},
    {
      'no': 6,
      'desc': 'Fotocopy SK Pensiun (bila tidak mempunyai kartu peserta).'
    },
    {
      'no': 7,
      'desc':
          'Fotocopy Surat permohonan pensiun / SKPP (bila tidak ada data keluarga).'
    },
    {'no': 8, 'desc': 'Nomor rekening Bank.'},
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
                  'assets/image/banner_kesehatan.png',
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
                        'Kesehatan',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const TabBar(
                        tabs: <Widget>[
                          Tab(text: "Kegiatan"),
                          Tab(text: "Manfaat"),
                          Tab(text: "Pengajuan"),
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
                    height: 780,
                    child: TabBarView(children: [
                      const Column(
                        children: [
                          SizedBox(height: 16.0),
                          Text(
                            'Yayasan mengelola dana program kesehatan yang disalurkan kepada seluruh pensiunan Perum Perhutani dalam bentuk program kesehatan sesuai dengan ketentuan yang berlaku. Masa pertanggungan manfaat program kesehatan ditetapkan sesuai dengan masa iurannya, paling lama 15 tahun sejak karyawan pensiun. Yang mendapat pertanggungan adalah pensiunan Direksi den pensiunan karyawan beserta karyawan beserta pasangannya (Suami / Istri) serta satu anak usia maksimum 25 tahun dan belum menikah.',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'Manfaat Program kesehatan yang diberikan',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16.0),
                          ...List.generate(myList.length, (index) {
                            return ContentItem(
                                numberText: (index + 1).toString(),
                                descText: myList[index]['desc']);
                          }),
                          const SizedBox(height: 16.0),
                          const Text(
                            'Apabila dalam masa pertanggungan peserta tidak pernah mengajukan klaim biaya rawat inap, di akhir masa pertanggungan akan diberikan manfaat "Nilai Hidup" yang besarnya',
                          ),
                          ...List.generate(listManfaat.length, (index) {
                            return ContentItem(
                                numberText: (index + 1).toString(),
                                descText: listManfaat[index]['desc'],
                                isCircle: false);
                          }),
                          const SizedBox(height: 16.0),
                          const Text(
                            'Apabila dalam masa pertanggungan peserta meninggal dunia, diberikan "Santunan Kematian" yang besarnya',
                          ),
                          ...List.generate(listSantunan.length, (index) {
                            return ContentItem(
                                numberText: (index + 1).toString(),
                                descText: listSantunan[index]['desc'],
                                isCircle: false);
                          }),
                          const SizedBox(height: 16.0),
                          const Text(
                            'Bantuan pembelian kacamata atau penggantian lensa diberikan setelah masa perlindungan lebih dari 10 tahun, sebesar Rp 200.000 dan hanya diberikan sekali.',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'Mekanisme Pengajuan Penggantian Biaya Kesehatan',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 16.0),
                          ...List.generate(listMekanisme.length, (index) {
                            return ContentItem(
                                numberText: '.'.toString(),
                                descText: listMekanisme[index]['desc'],
                                isCircle: false);
                          }),
                          const SizedBox(height: 16.0),
                          ...List.generate(listKelengkapan.length, (index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 32),
                              child: ContentItem(
                                  numberText: (index + 1).toString(),
                                  descText: listKelengkapan[index]['desc'],
                                  isCircle: false),
                            );
                          }),
                          const SizedBox(height: 16.0),
                          ...List.generate(listMekanismeNext.length, (index) {
                            return ContentItem(
                                numberText: '.'.toString(),
                                descText: listMekanismeNext[index]['desc'],
                                isCircle: false);
                          }),
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
