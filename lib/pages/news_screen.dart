import 'package:flutter/material.dart';
import 'package:jatisejahtera/components/berita.dart';
import 'package:jatisejahtera/config/colors.dart';
import 'package:jatisejahtera/models/content_model.dart';
import 'package:jatisejahtera/pages/content_screen.dart';
import 'package:jatisejahtera/services/content_service.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<Content> listNews = [];

  bool isLoading = true;

  ContentService contentService = ContentService();

  fetchNews() async {
    listNews = await contentService.fetchNews();
    setState(() {});
    isLoading = false;
  }

  @override
  void initState() {
    fetchNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BERITA',
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
          : ListView.builder(
              itemCount: listNews.length,
              itemBuilder: (context, index) {
                final newsIndex = listNews[index];
                return Berita(
                  contentImage: newsIndex.imageUrl,
                  contentTitle: newsIndex.title,
                  contentDesc: newsIndex.desc,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ContentScreen(
                          imagesContent: newsIndex.imageUrl,
                          titleContent: newsIndex.title,
                          descContent: newsIndex.desc);
                    }));
                  },
                );
              }),
    );
  }
}
