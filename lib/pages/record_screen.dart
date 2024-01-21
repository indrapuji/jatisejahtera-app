import 'package:flutter/material.dart';
import 'package:jatisejahtera/components/status_card.dart';
import 'package:jatisejahtera/pages/status_screen.dart';
// import 'package:jatisejahtera/components/empty_image.dart';

class RecordScreen extends StatelessWidget {
  const RecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
              opacity: 0.5,
              image: AssetImage(
                'assets/image/background_jati.png',
              ),
              fit: BoxFit.contain,
              alignment: Alignment.topCenter)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          // body: EmptyImage(
          //   imageContent: 'assets/image/empty.png',
          //   textTitle: 'Oops! Sepertinya masih kosong',
          //   textSub: 'Yuk ajukan klaim pertama mu',
          // ),
          body: Column(
            children: [
              const SizedBox(height: 50),
              StatusCard(
                status: 'approve',
                cardDate: '24 Mei 2023',
                claim: 'Bantuan Kacamata',
                massage: '',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const StatusScreen(
                      status: 'approve',
                      claim: 'Bantuan Kacamata',
                      massage: '',
                    );
                  }));
                },
              ),
              StatusCard(
                status: 'reject',
                cardDate: '24 Mei 2023',
                claim: 'Bantuan Kacamata',
                massage: 'Masa pertanggungan telah berakhir',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const StatusScreen(
                      status: 'reject',
                      claim: 'Bantuan Kacamata',
                      massage: 'Masa pertanggungan telah berakhir',
                    );
                  }));
                },
              ),
              StatusCard(
                status: 'prosess',
                cardDate: 'Proses',
                claim: 'Bantuan Kacamata',
                massage: '',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const StatusScreen(
                      status: 'prosess',
                      claim: 'Bantuan Kacamata',
                      massage: 'Masa pertanggungan telah berakhir',
                    );
                  }));
                },
              )
            ],
          )),
    );
  }
}
