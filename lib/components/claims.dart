import 'package:flutter/material.dart';

class Claims extends StatelessWidget {
  const Claims({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(left: 8, bottom: 8),
            child: const Text('Pengajuan Claim',
                style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                clipBehavior: Clip.hardEdge,
                elevation: 10,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid)),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    SizedBox(
                      width: ((MediaQuery.of(context).size.width) - 48) / 2,
                      height: ((MediaQuery.of(context).size.width) - 48) / 2,
                      child: Image.asset(
                        'assets/image/claim_kematian.png',
                        fit: BoxFit.cover,
                        color: Colors.black45,
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Santunan\nKematian",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.hardEdge,
                elevation: 10,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid)),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    SizedBox(
                      width: ((MediaQuery.of(context).size.width) - 48) / 2,
                      height: ((MediaQuery.of(context).size.width) - 48) / 2,
                      child: Image.asset(
                        'assets/image/claim_nilaihidup.png',
                        fit: BoxFit.cover,
                        color: Colors.black45,
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Manfaat Nilai\nHidup",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                clipBehavior: Clip.hardEdge,
                elevation: 10,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid)),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    SizedBox(
                      width: ((MediaQuery.of(context).size.width) - 48) / 2,
                      height: ((MediaQuery.of(context).size.width) - 48) / 2,
                      child: Image.asset(
                        'assets/image/claim_rawatinap.png',
                        fit: BoxFit.cover,
                        color: Colors.black45,
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Bantuan Rawat\nInap",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                clipBehavior: Clip.hardEdge,
                elevation: 10,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid)),
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    SizedBox(
                      width: ((MediaQuery.of(context).size.width) - 48) / 2,
                      height: ((MediaQuery.of(context).size.width) - 48) / 2,
                      child: Image.asset(
                        'assets/image/claim_kacamata.png',
                        fit: BoxFit.cover,
                        color: Colors.black45,
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Bantuan\nKacamata",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
