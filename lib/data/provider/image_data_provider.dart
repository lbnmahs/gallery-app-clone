import 'dart:convert';

import 'package:gallery_app/secrets.dart';
import 'package:http/http.dart' as http;

class ImageDataProvider {
  Future<List<String>> getImagesByCollection(String collection) async {
    try{
      final res = await http.get(
        Uri.parse('https://api.unsplash.com/photos/random?count=5&query=$collection'),
        headers: {'Authorization': 'Client-ID $client_id'}
      );
      final List<String> images = json.decode(res.body);

      return images;
    } catch(e) {
      throw e.toString();
    }
  }
}