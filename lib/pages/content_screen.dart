import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:jatisejahtera/config/colors.dart';

class ContentScreen extends StatelessWidget {
  final String imagesContent;
  final String titleContent;
  final String descContent;

  const ContentScreen(
      {super.key,
      required this.imagesContent,
      required this.titleContent,
      required this.descContent});

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
                background: Image.network(
                  imagesContent,
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
                      const SizedBox(height: 8.0),
                      Container(
                        width: 40.0,
                        height: 5.0,
                        decoration: BoxDecoration(
                          color: outlineColor,
                          borderRadius: BorderRadius.circular(100.0),
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 16.0),
                      Text(
                        titleContent,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 16.0),
                      Text(descContent)
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
