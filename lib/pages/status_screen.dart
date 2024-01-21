import 'package:flutter/material.dart';
import 'package:jatisejahtera/components/back_header.dart';
import 'package:jatisejahtera/config/colors.dart';

class StatusScreen extends StatelessWidget {
  final String status;
  final String claim;
  final String massage;
  const StatusScreen(
      {super.key,
      required this.status,
      required this.claim,
      required this.massage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: status == 'approve'
            ? primaryColor
            : status == 'reject'
                ? rejectColor
                : Colors.amber,
        body: Padding(
            padding: const EdgeInsets.only(
              top: 40,
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: status != 'approve'
                  ? Column(
                      children: [
                        const BackHeader(),
                        Expanded(
                            flex: 1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(claim,
                                    style: const TextStyle(
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                  status == 'reject'
                                      ? 'Ditolak !!!'
                                      : 'Sedang di Proses !!!',
                                  style: const TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )),
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.all(32.0),
                              child: Image.asset(
                                status == 'reject'
                                    ? 'assets/image/warning.png'
                                    : 'assets/image/waiting.png',
                              ),
                            )),
                        Expanded(
                            flex: 1,
                            child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  status == 'reject'
                                      ? massage
                                      : 'Cek secara berkala ya...',
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )))
                      ],
                    )
                  : Column(
                      children: [
                        const BackHeader(),
                        Text(claim,
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Stack(
                          children: [
                            Image.asset(
                              'assets/image/content_frame.png',
                              fit: BoxFit.contain,
                              width: (MediaQuery.of(context).size.width),
                            ),
                            Positioned(
                                top: 50,
                                left: 80,
                                child: SizedBox(
                                    width: (MediaQuery.of(context).size.width) -
                                        150,
                                    height:
                                        (MediaQuery.of(context).size.width) -
                                            150,
                                    child:
                                        Image.asset('assets/image/struk.png'))),
                          ],
                        )
                      ],
                    ),
            )));
  }
}
