import 'dart:convert';

import 'package:jatisejahtera/models/content_model.dart';
import 'package:http/http.dart' as http;

class ContentService {
  final _baseUrl = 'https://jati.pasangbajaringan.id';

  Future fetchCarousel() async {
    try {
      final response = await http
          .get(Uri.parse('$_baseUrl/content?category=carousel&status=true'));
      if (response.statusCode == 200) {
        Iterable it = jsonDecode(response.body);
        List<Content> carousel = it.map((e) => Content.fromJson(e)).toList();
        return carousel;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future fetchNews() async {
    try {
      final response = await http
          .get(Uri.parse('$_baseUrl/content?category=berita&status=true'));
      if (response.statusCode == 200) {
        Iterable it = jsonDecode(response.body);
        List<Content> news = it.map((e) => Content.fromJson(e)).toList();
        return news;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  Future fetchGaleri() async {
    try {
      final response = await http
          .get(Uri.parse('$_baseUrl/content?category=galeri&status=true'));
      if (response.statusCode == 200) {
        Iterable it = jsonDecode(response.body);
        List<Content> galeri = it.map((e) => Content.fromJson(e)).toList();
        return galeri;
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  // Future fetchRealisasi(String contentTitle) async {
  //   try {
  //     final response = await http.get(
  //         Uri.parse('$_baseUrl/content?category=$contentTitle&status=true'));
  //     if (response.statusCode == 200) {
  //       Iterable it = jsonDecode(response.body);
  //       List<Content> realisasi = it.map((e) => Content.fromJson(e)).toList();
  //       return realisasi;
  //     }
  //   } catch (e) {
  //     throw Exception(e.toString());
  //   }
  // }
}
