import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jatisejahtera/config/colors.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
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
          'assets/image/sosial.png',
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
    );
  }
}
