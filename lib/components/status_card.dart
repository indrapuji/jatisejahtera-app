import 'package:flutter/material.dart';
import 'package:jatisejahtera/config/colors.dart';

class StatusCard extends StatelessWidget {
  final String cardDate;
  final String claim;
  final String status;
  final String? massage;
  final void Function()? onTap;
  const StatusCard(
      {super.key,
      required this.cardDate,
      required this.claim,
      required this.status,
      this.massage,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Container(
          height: 140,
          decoration: BoxDecoration(
              color: status == 'approve'
                  ? primaryColor
                  : status == 'reject'
                      ? rejectColor
                      : processColor,
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                  image: AssetImage(
                    'assets/image/background_notif.png',
                  ),
                  fit: BoxFit.contain,
                  alignment: Alignment.bottomRight)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(cardDate,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            claim,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.white),
                          ),
                          const Divider(height: 5),
                          // Text('Rp 5.000.000'),
                          status == 'reject'
                              ? Text(massage!,
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 13))
                              : Container(),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
