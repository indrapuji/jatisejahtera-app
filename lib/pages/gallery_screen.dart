import 'package:flutter/material.dart';
import 'package:jatisejahtera/config/colors.dart';
import 'package:jatisejahtera/models/content_model.dart';
import 'package:jatisejahtera/pages/content_screen.dart';
import 'package:jatisejahtera/services/content_service.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  List<Content> listGaleri = [];
  bool isLoading = true;

  ContentService contentService = ContentService();

  fetchGaleri() async {
    listGaleri = await contentService.fetchGaleri();
    setState(() {});
    isLoading = false;
  }

  @override
  void initState() {
    fetchGaleri();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Galeri',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back,
            size: 25,
          ),
        ),
      ),
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(primaryColor),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(4.0),
              child: GridView.count(
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                crossAxisCount: 3,
                children: <Widget>[
                  ...List.generate(listGaleri.length, (index) {
                    final galeriIndex = listGaleri[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ContentScreen(
                              imagesContent: galeriIndex.imageUrl,
                              titleContent: galeriIndex.title,
                              descContent: galeriIndex.desc);
                        }));
                      },
                      child: Image.network(galeriIndex.imageUrl,
                          fit: BoxFit.cover),
                    );
                  })
                ],
              ),
            ),
    );
  }
}
